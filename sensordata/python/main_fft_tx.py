import serial
import threading
import time
import csv
from datetime import datetime

# --- 1. 설정 ---
PORT_BASYS3 = 'COM17'
BAUD_RATE = 115200
COLLECT_BINS = 512  # FFT 결과의 절반 (0~511)
TARGET_SETS = 10    # 수집하고 싶은 FFT 세트 수 (예: 10회 분량)

fft_list = []
lock = threading.Lock()
running = True

# --- 2. 데이터 수집 함수 (스레드용) ---
def read_basys3_fft():
    global running
    print(f"[{PORT_BASYS3}] 데이터 읽기 스레드 시작...")
    while running:
        try:
            # 헤더 0xFF 찾기
            byte = ser_basys3.read(1)
            if byte == b'\xff':
                # 나머지 4바이트 읽기 (Index 2바이트 + Magnitude 2바이트)
                packet = ser_basys3.read(4)
                if len(packet) < 4:
                    continue
                
                # 데이터 파싱
                index = (packet[0] << 8) | packet[1]
                mag   = (packet[2] << 8) | packet[3]
                
                with lock:
                    fft_list.append([index, mag])
        except Exception as e:
            print(f"\n[오류] 데이터 수집 중 문제 발생: {e}")
            break

# --- 3. 시리얼 연결 및 스레드 실행 ---
try:
    ser_basys3 = serial.Serial(port=PORT_BASYS3, baudrate=BAUD_RATE, timeout=1)
    
    t_fft = threading.Thread(target=read_basys3_fft, daemon=True)
    t_fft.start()

    print(f"\n[시작] {TARGET_SETS}세트 수집 목표 (총 {TARGET_SETS * COLLECT_BINS}개 데이터)")
    print("중단하려면 Ctrl+C를 누르세요.")

    # --- 4. 메인 루프: 목표치 도달 확인 ---
    sets_count = 0
    while sets_count < TARGET_SETS:
        with lock:
            current_len = len(fft_list)
            sets_count = current_len // COLLECT_BINS
        
        print(f"\r진행 상황: {sets_count}/{TARGET_SETS} 세트 완료 ({current_len}개)", end='')
        time.sleep(0.2)

    print(f"\n\n[완료] 목표한 {TARGET_SETS}세트를 모두 수집했습니다.")

except KeyboardInterrupt:
    print("\n\n[중단] 사용자에 의해 수집이 중단되었습니다.")
except Exception as e:
    print(f"\n[오류] 시리얼 포트 연결 실패: {e}")
finally:
    running = False
    time.sleep(0.5)
    if 'ser_basys3' in locals() and ser_basys3.is_open:
        ser_basys3.close()

# --- 5. 데이터 저장 ---
if fft_list:
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    filename = f'basys3_fft_data_{timestamp}.csv'
    
    with open(filename, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(['Bin_Index', 'Magnitude'])
        with lock:
            writer.writerows(fft_list)
    print(f"파일 저장 완료: {filename} (총 {len(fft_list)}행)")
else:
    print("저장할 데이터가 없습니다.")
import serial
import time
import csv

# 1. 시리얼 포트 설정 (본인의 포트 번호 확인: COM3, COM4 등)
py_serial = serial.Serial(
    port='COM16', 
    baudrate=115200,
)

data_list = []
print("데이터 수집을 시작합니다... (Ctrl+C로 중단)")

try:
    while True:
        if py_serial.readable():
            # 1단계: Header(0xAA)를 찾을 때까지 읽기
            line = py_serial.read(1)
            if line == b'\xaa':
                # 2단계: 나머지 패킷 읽기 (LEN, CMD, DATA_H, DATA_L, CRC) -> 총 5바이트
                packet = py_serial.read(5)
                
                # 3단계: 데이터 복원 (Signed 16-bit)
                raw_z = (packet[2] << 8) | packet[3]
                if raw_z > 32767: # 음수 처리
                    raw_z -= 65536
                
                print(f"수신 데이터: {raw_z}")
                data_list.append([time.time(), raw_z])

except KeyboardInterrupt:
    # 4단계: CSV 파일로 저장
    with open('vibration_data.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(['Time', 'Z-axis'])
        writer.writerows(data_list)
    print("\n파일 저장 완료: vibration_data.csv")
    py_serial.close()
import serial
import threading
import time
import csv

COLLECT_SAMPLES = 1000

ser_stm32  = serial.Serial(port='COM16', baudrate=115200)
ser_basys3 = serial.Serial(port='COM17', baudrate=115200)

stm32_list  = []
basys3_list = []
lock = threading.Lock()
running = True

def read_stm32():
    while running:
        byte = ser_stm32.read(1)
        if byte == b'\xaa':
            packet = ser_stm32.read(5)
            if len(packet) < 5:
                continue
            raw = (packet[2] << 8) | packet[3]
            if raw > 32767:
                raw -= 65536
            with lock:
                stm32_list.append([time.time(), raw])

def read_basys3():
    while running:
        byte = ser_basys3.read(1)
        if byte == b'\xfe':
            packet = ser_basys3.read(4)
            if len(packet) < 4:
                continue
            raw  = (packet[0] << 8) | packet[1]
            filt = (packet[2] << 8) | packet[3]
            if raw  > 32767: raw  -= 65536
            if filt > 32767: filt -= 65536
            with lock:
                basys3_list.append([time.time(), raw, filt])

t1 = threading.Thread(target=read_stm32,  daemon=True)
t2 = threading.Thread(target=read_basys3, daemon=True)
t1.start()
t2.start()

print(f"수집 중... (Basys3 기준 {COLLECT_SAMPLES}개 목표)")

try:
    while len(basys3_list) < COLLECT_SAMPLES:
        print(f"\r진행: {len(basys3_list)}/{COLLECT_SAMPLES}", end='')
        time.sleep(0.1)
except KeyboardInterrupt:
    print("\n수동 중단")

running = False
time.sleep(0.5)

with open('stm32_raw.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['Time', 'Raw_Z'])
    writer.writerows(stm32_list)

with open('basys3_data.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['Time', 'Raw_Z', 'Filtered_Z'])
    writer.writerows(basys3_list)

print(f"\n저장 완료 - STM32: {len(stm32_list)}개, Basys3: {len(basys3_list)}개")
ser_stm32.close()
ser_basys3.close()
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# --- 1. 설정값 ---
SAMPLING_RATE = 100  # STM32 전송 주기 10ms -> 100Hz
FFT_POINTS = 1024
COLLECT_BINS = 512

# 최신 FFT 데이터 파일 로드
# 예: basys3_fft_data_20260413_163300.csv
fft_df = pd.read_csv('basys3_fft_data_20260413_170217.csv') # 실제 파일명으로 수정

# --- 2. 데이터 처리: N회차 평균 내기 ---
# Bin_Index(0~511)별로 그룹화하여 Magnitude 평균 계산
fft_avg = fft_df.groupby('Bin_Index')['Magnitude'].mean().reset_index()

# --- 3. Hz 축 계산 ---
# 공식: Index * (Fs / N)
fft_avg['Hz'] = fft_avg['Bin_Index'] * (SAMPLING_RATE / FFT_POINTS)

# --- 4. 시각화 ---
plt.figure(figsize=(12, 6))

# 평균 그래프 (배경)
plt.fill_between(fft_avg['Hz'], fft_avg['Magnitude'], color='skyblue', alpha=0.4, label='Average Spectrum')
# 메인 선
plt.plot(fft_avg['Hz'], fft_avg['Magnitude'], color='blue', linewidth=1.5, label='Magnitude (Mean)')

# 주요 피크(Peak) 표시 (DC 성분 제외 주파수 1Hz 이상에서)
valid_area = fft_avg[fft_avg['Hz'] > 1.0]
if not valid_area.empty:
    peak = valid_area.loc[valid_area['Magnitude'].idxmax()]
    plt.annotate(f"Peak: {peak['Hz']:.2f} Hz", 
                 xy=(peak['Hz'], peak['Magnitude']), 
                 xytext=(peak['Hz']+5, peak['Magnitude']+10),
                 arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=5))

plt.title(f'진동 주파수 분석 (N회 평균 적용, Fs={SAMPLING_RATE}Hz)', fontsize=14)
plt.xlabel('주파수 (Hz)', fontsize=12)
plt.ylabel('Magnitude (Energy)', fontsize=12)
plt.grid(True, linestyle='--', alpha=0.7)
plt.xlim(0, SAMPLING_RATE/2) # 0~50Hz 영역
plt.legend()

plt.tight_layout()
plt.savefig('fft_hz_analysis.png', dpi=150)
plt.show()

# 분석 결과 출력
print(f"주파수 해상도: {SAMPLING_RATE/FFT_POINTS:.4f} Hz/bin")
if not valid_area.empty:
    print(f"가장 강한 진동 주파수: {peak['Hz']:.2f} Hz")
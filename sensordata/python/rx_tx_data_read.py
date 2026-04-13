import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.font_manager as fm

plt.rcParams['font.family'] = 'Malgun Gothic'
plt.rcParams['axes.unicode_minus'] = False

stm32_df  = pd.read_csv('stm32_raw.csv')
basys3_df = pd.read_csv('basys3_data.csv')

coeffs = [40, 90, 150, 232, 232, 150, 90, 40]
basys3_df['Python_FIR'] = basys3_df['Raw_Z'].rolling(window=8).apply(
    lambda x: sum(x * coeffs) / 1024, raw=True)

fig, axes = plt.subplots(3, 1, figsize=(14, 10), sharex=False)

# 그래프 1: .values 추가로 인덱스 불일치 해결
axes[0].plot(stm32_df['Raw_Z'],  label='STM32 Raw (COM16)',  color='gray', alpha=0.7)
axes[0].plot(basys3_df['Raw_Z'], label='Basys3 Raw (COM17)', color='blue', alpha=0.7)
axes[0].set_title('Raw 데이터 비교 (STM32 vs Basys3)')
axes[0].set_ylabel('ADC Value')
axes[0].legend()
axes[0].grid(True)

# 그래프 2
axes[1].plot(basys3_df['Raw_Z'].values,      label='Raw',      color='lightgray')
axes[1].plot(basys3_df['Filtered_Z'].values, label='FPGA FIR', color='blue', linewidth=2)
axes[1].set_title('FPGA FIR 필터 효과')
axes[1].set_ylabel('ADC Value')
axes[1].legend()
axes[1].grid(True)

# 그래프 3
axes[2].plot(basys3_df['Filtered_Z'].values, label='FPGA FIR',   color='blue', linewidth=2)
axes[2].plot(basys3_df['Python_FIR'].values, label='Python FIR', color='red',  linewidth=1.5, linestyle='--')
axes[2].set_title('FPGA FIR vs Python FIR (일치하면 검증 완료)')
axes[2].set_ylabel('ADC Value')
axes[2].set_xlabel('Sample Index')
axes[2].legend()
axes[2].grid(True)

min_len = min(len(stm32_df), len(basys3_df))
diff = stm32_df['Raw_Z'].values[:min_len] - basys3_df['Raw_Z'].values[:min_len]
print(f"STM32 vs Basys3 Raw 차이 - 평균: {diff.mean():.2f}, 최대: {abs(diff).max():.2f}")

diff = (basys3_df['Filtered_Z'] - basys3_df['Python_FIR']).dropna()
print(f"FPGA vs Python FIR 오차 - 평균: {diff.mean():.2f}, 최대: {diff.abs().max():.2f}")

plt.tight_layout()
plt.savefig('vibration_analysis.png', dpi=150)
plt.show()
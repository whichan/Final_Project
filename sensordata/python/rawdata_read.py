import pandas as pd
import matplotlib.pyplot as plt

# 1. 데이터 불러오기
df = pd.read_csv('vibration_data.csv')

# 2. 그래프 그리기
plt.figure(figsize=(12, 6))
plt.plot(df['Z-axis'], label='Raw Z-Accel', color='lightgray', alpha=0.7)

# 3. 파이썬으로 이동평균(단순 필터) 적용해보기 (비교용)
df['Filtered'] = df['Z-axis'].rolling(window=8).mean()
plt.plot(df['Filtered'], label='Simple Moving Avg (8-tap)', color='red')

plt.title('Vibration Data Analysis')
plt.legend()
plt.grid(True)
plt.show()
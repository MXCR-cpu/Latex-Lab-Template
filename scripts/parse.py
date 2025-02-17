import csv
import statistics
import math

s = 0
measure_R_b = 994
v_T = 0.025
n = []
n_mean = 1
with open('./data/experiment_1.csv', 'r') as f:
    rows = csv.DictReader(f)

    for row in rows:
        new_n = ((float(row['rd(Ohms)']) *
                  float(row['V_{R_b}(V)'])) /
                    (measure_R_b * v_T))
        n.append(new_n)
        print([
            row['rd(Ohms)'],
            row['AC RMS Vx(mV)'],
            row['V_{R_b}(V)'],
            float(row['V_{R_b}(V)']) / measure_R_b,
            new_n
        ])
    n_mean = statistics.mean(n)
    print(f'n = {n_mean} +/- {statistics.stdev(n)}')

Is = []
rd = []

with open('./data/experiment_2.csv', 'r') as f:
    rows = csv.DictReader(f)
    denominator_value = n_mean * v_T

    for row in rows:
        I_DQ = float(row['V_{RB}(V)']) / measure_R_b
        new_Is = float(row['V_{RB}(V)']) / (
                measure_R_b * (math.exp(float(row['V_{DQ}(V)']) /
                    denominator_value) - 1))
        Is.append(new_Is)

    mean_I_s = statistics.mean(Is) * 1E9
    stdev_I_s = statistics.stdev(Is) * 1E9
    print(f'I_s = {mean_I_s} (nA) +/- {stdev_I_s} (nA)')

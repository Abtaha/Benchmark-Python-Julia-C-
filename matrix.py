import time
import numpy as np

def nIncrease(mat):
    np.linalg.inv(mat)
    mat.T

def main():
    for i in range(10000, 20000, 2000):
        mat = np.random.rand(i, i)

        start = time.time()
        nIncrease(mat)
        
        print(time.time() - start)
    
    mat = np.random.rand(1000, 1000)
    mats_time = []
    for i in range(5):
        start = time.time()
        nIncrease(mat)
        
        timeTaken = time.time() - start
        mats_time.append(timeTaken)
        
    meanTime = np.mean(mats_time)
    
    f = open("time taken.txt", "a")
    f.write("Python: " + str(meanTime) + "\n")
    f.close()

print("Python Started")
main()
print("Python Ended\n\n")
import time
import numpy as np
import sys, os
sys.path.insert(1, os.path.join(sys.path[0], '../lib'))
import gpu_library  


A = np.random.randn(1000000)
B = A.copy()
print(A[0:10])
t1 = time.time()
gpu_library.gpu_sort(A)
t2 = time.time()
print("GPU sort costs: {}ms".format((t2-t1)*1000))
print(A[0:10])

print(B[0:10])
t1 = time.time()
np.sort(B)
t2 = time.time()
print("CPU sort costs: {}ms".format((t2-t1)*1000))
print(B[0:10])



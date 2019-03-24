# Mikołaj Nowicki rozwiazanie w pythonie

import random
import math
from scipy.optimize import minimize
lambd=5
N=1000
lista=list()
for i in range(N):
  k = 1
  t = math.exp(-lambd)/(1-math.exp(-lambd))*lambd
  s = t
  u=random.random()
  while s<u:
    k=k+1
    t=t*lambd/k
    s=s+t
  lista.append(k)

wartosci=sum(lista)

def funkcja(x):
  wrt=math.log(x)*wartosci-N*math.log((math.exp(x)-1)) 
  return -wrt

res = minimize(funkcja,4.5)
print(res)
print(lista)

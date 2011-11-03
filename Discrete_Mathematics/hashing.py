import random
import math

p = 99989 	# Größe der Hashtable
HASHTABLE = [list() for i in range(p)]
ran = 5*p       # Anzahl Elemente
dist = ran/100
statistic = []

# Hashfunctions
def h1(r):
        return r%p

def h2(r):
        A = (math.sqrt(5)-1 )/ 2
        return int(math.floor(p*(A*r % 1)))


# input data
input1 = [k for k in range(ran)]
input2 = [random.randint(0 , 2**30) for i in range(ran)]

for k in range(ran):
        
        # Edit here: Hash function and input data
	r = input1[k]
	pos = h2(r)

	HASHTABLE[pos].append(r)

	# every few steps: get the statistics
	if k % dist == 0:
		# determine max and average list lengths
		maxx = 0
		summ = 0
		var = 0
		loadfactor = k/float(p)
		for i in range(p):
			summ += len(HASHTABLE[i])
			var += (len(HASHTABLE[i]) - loadfactor)**2
			if len(HASHTABLE[i]) > maxx:
				maxx = len(HASHTABLE[i])
		statistic.append( ( loadfactor, maxx, math.sqrt(var/float(p))  )  )

for (a,b,c) in  statistic:
        print a , "\t" , b , "\t" , c
                
                
        




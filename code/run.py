import sys
import numpy

def add(x, y):
    # return float(x) + float(y)
    return numpy.add(float(x), float(y))

if __name__ == '__main__':
    print(add(sys.argv[1], sys.argv[2]))

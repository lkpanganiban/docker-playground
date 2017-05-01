import sys
import numpy
import json
import datetime

def add(x, y):
    z = numpy.add(float(x), float(y))
    write_json(z)

def write_json(z):
    fileloc = "/data/%s.json" % datetime.datetime.now()
    result = {"result": z}
    with open(fileloc, 'w') as jsonfile:
        json.dump(result, jsonfile)

if __name__ == '__main__':
    add(sys.argv[1], sys.argv[2])
    # readval(sys.argv[1])

from numpy import *

# Useful functions from other Python script
from CreatePostprocessorText import *

# File Names
name = "Project2_Goal1Transient_Abaqus.csv"
newName = name.split(".")[0] + "_Sanitized.csv"
inFileName = "Goal1Transient.i"

# Get csv lines in bulk
f = open(name, "r")
lines = f.read().split("\n")
f.close()

# Convert to matrix to process data
mat = transpose(array([line.split(",") for line in lines][0:-1]))
mat = [list(x) for x in mat]

# Time variables for input file
start_time=None
dt=None
end_time=None

# Get transient time variables from input file
inFile = open(inFileName)
for line in inFile:
    if start_time == None and checkValue(line, "start_time"):
        start_time = getFloatValue(line)
    if dt == None and checkValue(line, "dt"):
        dt = getFloatValue(line)
    if end_time == None and checkValue(line, "end_time"):
        end_time = getFloatValue(line)
inFile.close()

# Calculate the time values at each time step
steps = (end_time - start_time)/dt
times = ["%g" % (i * dt) for i in range(int(steps) + 1)] # Easier to convert these elements to strings instead of mat elements to floats

# Sanitize data by removing repeated time step arrays
newMat = list(filter(lambda x: x != times, mat))

# Reconstruct new CSV with only single entry for timesteps and indexing each element node
outFile = open(newName, "w")

outStr = "Time," + ",".join([str(i) for i in range(len(newMat))]) + "\n"

newMat = transpose(newMat)
for i in range(len(times)):
    outStr += times[i] + "," + ",".join(newMat[i]) + "\n"

outFile.write(outStr)
outFile.close()
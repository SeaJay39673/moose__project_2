# Compares two CSV files. 
# Averages the columns and sorts left to right from least to greatest
# Assumes that the first row is not important and does not sort by the time column.
# Time columns MUST be the same
# Number of nodes (data points) MUST be the same

# Logic for comparison without confidence of which nodes are which are as follows:
#   Assuming the values across time steps for each node are correct for both simulations, then the average values of each node across time steps 
#   should also be similar between simulations. Meaning that nodes can be sorted based on this average and then compared. 

from numpy import transpose

# File names for data to be compared
File1 = "Goal1Transient_out.csv"
File2 = "Project2_Goal1Transient_Abaqus_Sanitized.csv"

def getData(file): # returns Times and Data ordered time step
    f = open(file)
    lines = f.read().split("\n")[0:-1] # Remove last element as it is empty
    data = [line.split(",") for line in lines][1:] # Remove first Row as it should not important
    data = transpose(data)
    times = data[0]
    data = data[1:] # Remove times from data
    return [times, data.tolist()] # [times, transpose(data.tolist())]

# Get data and sort
[Times, f1Data] = getData(File1)
[Times, f2Data] = getData(File2) # Times should be the same, so value gets overridden

pool = f2Data.copy()
compDict = {}
tol = 1

def comp(col1, col2):
    for i in range(len(col1)):
        if abs(float(col1[i]) - float(col2[i])) > tol:
            return False
    return True


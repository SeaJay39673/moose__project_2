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
File1 = "./OutputData/Goal1Transient_out.csv"
File2 = "./OutputData/Project2_Goal1Transient_Abaqus_Sanitized.csv"

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

# A pool of all the "Candidates" to compare against f1Data
pool = [[float(val) for val in col] for col in f2Data]

# Dictionary of all the data
compDict = {}


# Compare two columns, get average difference, as well as the difference across each element.
def comp(col1, col2):
    col1 = [float(val) for val in col1]
    col2 = [float(val) for val in col2]
    def getAvgDiff(col1, col2):
        avg1 = sum(col1)/len(col1)
        avg2 = sum(col2)/len(col2)
        return abs(avg1 - avg2)
    def getDiffs(col1, col2):
        diffs = []
        for i in range(len(col1)):
            diffs.append(abs(col1[i] - col2[i]))
        return diffs
    return [getAvgDiff(col1,col2), getDiffs(col1,col2), col2]

# Evaluate the comparison. If average difference is less than previous, replace in the dictionary.
def evalComp(compRes, i, j):
    avgDiff = compRes[0]
    diffs = compRes[1]
    col = compRes[2]

    def placeEntry():
        compDict[i] = {
            'avgDiff': avgDiff,
            'diffs': diffs,
            'colInd': j,
            'col': col
        }
    if i not in compDict.keys():
        placeEntry()
    
    elif compDict[i]['avgDiff'] > avgDiff:
        placeEntry()

# Sort f1Data by Max value in each column. 
# This is so that data will be sorted when placed in spreadsheet
f1Data.sort(key = lambda col: max([float(val) for val in col]))

# Compare every column in f1Data to every Column in f2Data. Look for most likely column match.
for i in range(len(f1Data)):
    for j in range(len(pool)):
        evalComp(comp(f1Data[i], pool[j]), i, j)
    # Once all comparisons have been made for a single column in f1Data, then a match must have been found by now. 
    # Remove the match from the pool to prevent duplicate matches
    # break
    del pool[compDict[i]['colInd']]

newFName = "./OutputData/ComparedResults.csv"

outStr = ",Time," + ",".join(Times) + "\n"

for i in compDict:
    outStr += "Dat1-C%i,%s\n" %(i, ",".join(["%5.10f" %float(val) for val in f1Data[i]]))
    dat2 = [float(val) for val in compDict[i]['col']]
    outStr += "Dat2-C%i,%s\n" %(i, ",".join(["%5.10f" % val for val in compDict[i]['col']]))
    outStr += "Diff,%s\n" %(",".join(["%5.10f" %val for val in compDict[i]["diffs"]]))
    outStr += "Avg Diff,%f\n\n" %(compDict[i]["avgDiff"])


newF = open(newFName, "w")
newF.write(outStr)
newF.close()
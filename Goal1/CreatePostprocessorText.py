# The purpose of this script is to dynamically create a postprocessing script based on the simple mesh of the target input file.
# It will generate all of the possible points in the mesh provided, and then use the PointValue postprocesser MOOSE object with each point coordinate calculated.
# The script will then generate a text to an output file that can be copied and pasted into the postprocesser section needed.

# Target Input file where mesh is used
file = open("Goal1Transient.i")

# Helper functions
checkValue = lambda line, value: True if value in line else False
getValue = lambda line: line.strip().split("=")[1]
getIntValue = lambda line: int(getValue(line))
getFloatValue = lambda line: float(getValue(line))

# Variables
dim=None

xmin=0
xmax = None
nx = None

ymin=0
ymax = None
ny = None

zmin=0
zmax = None
nz = None

# Parse input file and retrieve values from mesh
for line in file:
    if dim == None and checkValue(line, "dim"):
        dim=getIntValue(line)
        
    if xmax == None and checkValue(line,"xmax"):
        xmax=getFloatValue(line)
    if nx==None and checkValue(line,'nx'):
        nx=getIntValue(line)

    if ymax == None and checkValue(line,'ymax'):
        ymax=getFloatValue(line)
    if ny==None and checkValue(line,'ny'):
        ny=getIntValue(line)

    if dim==3 and zmax==None and checkValue(line,'zmax'):
        zmax=getFloatValue(line)
    if dim==3 and nz==None and checkValue(line,'nz'):
        nz=getIntValue(line)
# Done with file
file.close()

# Calculate the array of each dimension
xh = (xmax - xmin)/ (nx)
xarr = [xh*i for i in range(nx + 1)]

yh = (ymax - ymin) / (ny)
yarr = [yh*i for i in range(ny + 1)]

if dim==3:
    zh = (zmax - zmin) / (nz)
    zarr = [zh*i for i in range(nz+1)]

# Create cartesian product of each dimension array. This will generate the coordinates of every point (node) in the mesh
cart = []
for x in xarr:
    for y in yarr:
        for z in zarr:
            cart.append([x,y,z])

# Convert the point array into a format that complies with MOOSE PointValue object
convertArray=lambda arr: " ".join(["%e" % arr[i] for i in range(len(arr))])

# Generate text to create PointValue object for each coordinate
script = "" 
for i in range(len(cart)):
    script += "[%i]\n\ttype=PointValue\n\tvariable=temp\n\tpoint='%s'\n[]\n" %(i, convertArray(cart[i]))

# Write text to output file and close
output = open("CreatePostprocessorTextOutput.txt", "w")
output.write(script)
output.close()
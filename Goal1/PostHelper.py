file = open("Goal1Transient.i")

checkValue = lambda line, value: True if value in line else False
getValue = lambda line: line.strip().split("=")[1]

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

for line in file:
    if dim == None and checkValue(line, "dim"):
        dim=getValue(line)
        
    if xmax == None and checkValue(line,"xmax"):
        xmax=getValue(line)
    if nx==None and checkValue(line,'nx'):
        nx=getValue(line)

    if ymax == None and checkValue(line,'ymax'):
        ymax=getValue(line)
    if ny==None and checkValue(line,'ny'):
        ny=getValue(line)

    if dim=='3' and zmax==None and checkValue(line,'zmax'):
        zmax=getValue(line)
    if dim=='3' and nz==None and checkValue(line,'nz'):
        nz=getValue(line)

xh = (float(xmax)-float(xmin)) / (float(nx)+1)
xarr=[i*xh for i in range (float(nx)+1)]

print(xarr)
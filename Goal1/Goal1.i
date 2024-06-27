# Stainless Steel Spec Sheet Reference: https://www.theworldmaterial.com/aisi-316l-stainless-steel/

[Mesh]
    type=GeneratedMesh
    dim=3
    
    xmax=0.1016
    nx=4
    
    ymax=0.254
    ny=10
    
    zmax=0.00635
    nz=2
[]

[Variables]
    [var_x] # Defaults to First Order with Lagrange Family
    []
    [var_y]
    []
    [var_z]
    []
[]

[Materials]
    [hcm]
        type=HeatConductionMaterial
        thermal_conductivity=14 # thermal conductivity of 316L Stainless Steel
        specific_heat=500 # Specific Heat Capacity of 316L Stainless Steel
    []
[]

[Kernels]
    [hc_x]
        type=HeatConduction
        variable=var_x
    []
    [hc_y]
        type=HeatConduction
        variable=var_y
    []
    [hc_z]
        type=HeatConduction
        variable=var_z
    []
[]

[BCs]
    [bottom_x]
        type=DirichletBC
        boundary=bottom
        variable=var_x
        value=366.4833 # 200F in K
    []
    [bottom_y]
        type=DirichletBC
        boundary=bottom
        variable=var_y
        value=366.4833 # 200F in K
    []
    [bottom_z]
        type=DirichletBC
        boundary=bottom
        variable=var_z
        value=366.4833 # 200F in K
    []
[]

[Executioner]
    type=Steady
    solve_type=NEWTON
[]

[Outputs]
    exodus=true
[]
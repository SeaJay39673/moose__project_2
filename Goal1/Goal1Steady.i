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
    [temp] # Defaults to First Order with Lagrange Family
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
    [hc_temp]
        type=HeatConduction
        variable=temp
    []
[]

[BCs]
    [bottom_temp]
        type=DirichletBC
        boundary=bottom
        variable=temp
        value=366.4833 # 200F in K
    []
[]

[Postprocessors]
    [temp]
        type=ElementAverageValue
        variable=temp
    []
[]

[Executioner]
    type=Steady
    solve_type=NEWTON
[]

[Outputs]
    exodus=true
[]
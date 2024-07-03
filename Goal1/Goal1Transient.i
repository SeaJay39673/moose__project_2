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
    [density]
        type=Density
        density=8000.0
    []
[]

[Kernels]
    [hc_temp]
        type=HeatConduction
        variable=temp
    []
    [hct_temp]
        type=HeatConductionTimeDerivative
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

[Executioner]
    type=Transient
    #Preconditioned JFNK (default)
    solve_type = 'PJFNK'


    petsc_options = '-snes_ksp_ew '
    petsc_options_iname = '-ksp_gmres_restart -pc_type -pc_hypre_type'
    petsc_options_value = '70 hypre boomeramg'
    l_max_its = 60
    nl_rel_tol = 1e-8
    nl_abs_tol = 1e-10
    l_tol = 1e-5

    start_time = 0.0
    dt = .5
    end_time = 10
    # num_steps = 20  # Total run time 1200 s
[]

[Outputs]
    exodus=true
[]
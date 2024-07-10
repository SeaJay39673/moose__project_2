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

[Postprocessors]
    # [temp]
    #     type=ElementAverageValue
    #     variable=temp
    # []
[0]
	type=PointValue
	variable=temp
	point='0.000000e+00 0.000000e+00 0.000000e+00'
[]
[1]
	type=PointValue
	variable=temp
	point='0.000000e+00 0.000000e+00 3.175000e-03'
[]
[2]
	type=PointValue
	variable=temp
	point='0.000000e+00 0.000000e+00 6.350000e-03'
[]
[3]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.540000e-02 0.000000e+00'
[]
[4]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.540000e-02 3.175000e-03'
[]
[5]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.540000e-02 6.350000e-03'
[]
[6]
	type=PointValue
	variable=temp
	point='0.000000e+00 5.080000e-02 0.000000e+00'
[]
[7]
	type=PointValue
	variable=temp
	point='0.000000e+00 5.080000e-02 3.175000e-03'
[]
[8]
	type=PointValue
	variable=temp
	point='0.000000e+00 5.080000e-02 6.350000e-03'
[]
[9]
	type=PointValue
	variable=temp
	point='0.000000e+00 7.620000e-02 0.000000e+00'
[]
[10]
	type=PointValue
	variable=temp
	point='0.000000e+00 7.620000e-02 3.175000e-03'
[]
[11]
	type=PointValue
	variable=temp
	point='0.000000e+00 7.620000e-02 6.350000e-03'
[]
[12]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.016000e-01 0.000000e+00'
[]
[13]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.016000e-01 3.175000e-03'
[]
[14]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.016000e-01 6.350000e-03'
[]
[15]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.270000e-01 0.000000e+00'
[]
[16]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.270000e-01 3.175000e-03'
[]
[17]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.270000e-01 6.350000e-03'
[]
[18]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.524000e-01 0.000000e+00'
[]
[19]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.524000e-01 3.175000e-03'
[]
[20]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.524000e-01 6.350000e-03'
[]
[21]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.778000e-01 0.000000e+00'
[]
[22]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.778000e-01 3.175000e-03'
[]
[23]
	type=PointValue
	variable=temp
	point='0.000000e+00 1.778000e-01 6.350000e-03'
[]
[24]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.032000e-01 0.000000e+00'
[]
[25]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.032000e-01 3.175000e-03'
[]
[26]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.032000e-01 6.350000e-03'
[]
[27]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.286000e-01 0.000000e+00'
[]
[28]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.286000e-01 3.175000e-03'
[]
[29]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.286000e-01 6.350000e-03'
[]
[30]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.540000e-01 0.000000e+00'
[]
[31]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.540000e-01 3.175000e-03'
[]
[32]
	type=PointValue
	variable=temp
	point='0.000000e+00 2.540000e-01 6.350000e-03'
[]
[33]
	type=PointValue
	variable=temp
	point='2.540000e-02 0.000000e+00 0.000000e+00'
[]
[34]
	type=PointValue
	variable=temp
	point='2.540000e-02 0.000000e+00 3.175000e-03'
[]
[35]
	type=PointValue
	variable=temp
	point='2.540000e-02 0.000000e+00 6.350000e-03'
[]
[36]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.540000e-02 0.000000e+00'
[]
[37]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.540000e-02 3.175000e-03'
[]
[38]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.540000e-02 6.350000e-03'
[]
[39]
	type=PointValue
	variable=temp
	point='2.540000e-02 5.080000e-02 0.000000e+00'
[]
[40]
	type=PointValue
	variable=temp
	point='2.540000e-02 5.080000e-02 3.175000e-03'
[]
[41]
	type=PointValue
	variable=temp
	point='2.540000e-02 5.080000e-02 6.350000e-03'
[]
[42]
	type=PointValue
	variable=temp
	point='2.540000e-02 7.620000e-02 0.000000e+00'
[]
[43]
	type=PointValue
	variable=temp
	point='2.540000e-02 7.620000e-02 3.175000e-03'
[]
[44]
	type=PointValue
	variable=temp
	point='2.540000e-02 7.620000e-02 6.350000e-03'
[]
[45]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.016000e-01 0.000000e+00'
[]
[46]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.016000e-01 3.175000e-03'
[]
[47]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.016000e-01 6.350000e-03'
[]
[48]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.270000e-01 0.000000e+00'
[]
[49]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.270000e-01 3.175000e-03'
[]
[50]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.270000e-01 6.350000e-03'
[]
[51]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.524000e-01 0.000000e+00'
[]
[52]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.524000e-01 3.175000e-03'
[]
[53]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.524000e-01 6.350000e-03'
[]
[54]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.778000e-01 0.000000e+00'
[]
[55]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.778000e-01 3.175000e-03'
[]
[56]
	type=PointValue
	variable=temp
	point='2.540000e-02 1.778000e-01 6.350000e-03'
[]
[57]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.032000e-01 0.000000e+00'
[]
[58]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.032000e-01 3.175000e-03'
[]
[59]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.032000e-01 6.350000e-03'
[]
[60]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.286000e-01 0.000000e+00'
[]
[61]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.286000e-01 3.175000e-03'
[]
[62]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.286000e-01 6.350000e-03'
[]
[63]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.540000e-01 0.000000e+00'
[]
[64]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.540000e-01 3.175000e-03'
[]
[65]
	type=PointValue
	variable=temp
	point='2.540000e-02 2.540000e-01 6.350000e-03'
[]
[66]
	type=PointValue
	variable=temp
	point='5.080000e-02 0.000000e+00 0.000000e+00'
[]
[67]
	type=PointValue
	variable=temp
	point='5.080000e-02 0.000000e+00 3.175000e-03'
[]
[68]
	type=PointValue
	variable=temp
	point='5.080000e-02 0.000000e+00 6.350000e-03'
[]
[69]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.540000e-02 0.000000e+00'
[]
[70]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.540000e-02 3.175000e-03'
[]
[71]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.540000e-02 6.350000e-03'
[]
[72]
	type=PointValue
	variable=temp
	point='5.080000e-02 5.080000e-02 0.000000e+00'
[]
[73]
	type=PointValue
	variable=temp
	point='5.080000e-02 5.080000e-02 3.175000e-03'
[]
[74]
	type=PointValue
	variable=temp
	point='5.080000e-02 5.080000e-02 6.350000e-03'
[]
[75]
	type=PointValue
	variable=temp
	point='5.080000e-02 7.620000e-02 0.000000e+00'
[]
[76]
	type=PointValue
	variable=temp
	point='5.080000e-02 7.620000e-02 3.175000e-03'
[]
[77]
	type=PointValue
	variable=temp
	point='5.080000e-02 7.620000e-02 6.350000e-03'
[]
[78]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.016000e-01 0.000000e+00'
[]
[79]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.016000e-01 3.175000e-03'
[]
[80]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.016000e-01 6.350000e-03'
[]
[81]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.270000e-01 0.000000e+00'
[]
[82]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.270000e-01 3.175000e-03'
[]
[83]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.270000e-01 6.350000e-03'
[]
[84]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.524000e-01 0.000000e+00'
[]
[85]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.524000e-01 3.175000e-03'
[]
[86]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.524000e-01 6.350000e-03'
[]
[87]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.778000e-01 0.000000e+00'
[]
[88]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.778000e-01 3.175000e-03'
[]
[89]
	type=PointValue
	variable=temp
	point='5.080000e-02 1.778000e-01 6.350000e-03'
[]
[90]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.032000e-01 0.000000e+00'
[]
[91]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.032000e-01 3.175000e-03'
[]
[92]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.032000e-01 6.350000e-03'
[]
[93]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.286000e-01 0.000000e+00'
[]
[94]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.286000e-01 3.175000e-03'
[]
[95]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.286000e-01 6.350000e-03'
[]
[96]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.540000e-01 0.000000e+00'
[]
[97]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.540000e-01 3.175000e-03'
[]
[98]
	type=PointValue
	variable=temp
	point='5.080000e-02 2.540000e-01 6.350000e-03'
[]
[99]
	type=PointValue
	variable=temp
	point='7.620000e-02 0.000000e+00 0.000000e+00'
[]
[100]
	type=PointValue
	variable=temp
	point='7.620000e-02 0.000000e+00 3.175000e-03'
[]
[101]
	type=PointValue
	variable=temp
	point='7.620000e-02 0.000000e+00 6.350000e-03'
[]
[102]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.540000e-02 0.000000e+00'
[]
[103]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.540000e-02 3.175000e-03'
[]
[104]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.540000e-02 6.350000e-03'
[]
[105]
	type=PointValue
	variable=temp
	point='7.620000e-02 5.080000e-02 0.000000e+00'
[]
[106]
	type=PointValue
	variable=temp
	point='7.620000e-02 5.080000e-02 3.175000e-03'
[]
[107]
	type=PointValue
	variable=temp
	point='7.620000e-02 5.080000e-02 6.350000e-03'
[]
[108]
	type=PointValue
	variable=temp
	point='7.620000e-02 7.620000e-02 0.000000e+00'
[]
[109]
	type=PointValue
	variable=temp
	point='7.620000e-02 7.620000e-02 3.175000e-03'
[]
[110]
	type=PointValue
	variable=temp
	point='7.620000e-02 7.620000e-02 6.350000e-03'
[]
[111]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.016000e-01 0.000000e+00'
[]
[112]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.016000e-01 3.175000e-03'
[]
[113]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.016000e-01 6.350000e-03'
[]
[114]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.270000e-01 0.000000e+00'
[]
[115]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.270000e-01 3.175000e-03'
[]
[116]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.270000e-01 6.350000e-03'
[]
[117]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.524000e-01 0.000000e+00'
[]
[118]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.524000e-01 3.175000e-03'
[]
[119]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.524000e-01 6.350000e-03'
[]
[120]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.778000e-01 0.000000e+00'
[]
[121]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.778000e-01 3.175000e-03'
[]
[122]
	type=PointValue
	variable=temp
	point='7.620000e-02 1.778000e-01 6.350000e-03'
[]
[123]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.032000e-01 0.000000e+00'
[]
[124]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.032000e-01 3.175000e-03'
[]
[125]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.032000e-01 6.350000e-03'
[]
[126]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.286000e-01 0.000000e+00'
[]
[127]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.286000e-01 3.175000e-03'
[]
[128]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.286000e-01 6.350000e-03'
[]
[129]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.540000e-01 0.000000e+00'
[]
[130]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.540000e-01 3.175000e-03'
[]
[131]
	type=PointValue
	variable=temp
	point='7.620000e-02 2.540000e-01 6.350000e-03'
[]
[132]
	type=PointValue
	variable=temp
	point='1.016000e-01 0.000000e+00 0.000000e+00'
[]
[133]
	type=PointValue
	variable=temp
	point='1.016000e-01 0.000000e+00 3.175000e-03'
[]
[134]
	type=PointValue
	variable=temp
	point='1.016000e-01 0.000000e+00 6.350000e-03'
[]
[135]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.540000e-02 0.000000e+00'
[]
[136]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.540000e-02 3.175000e-03'
[]
[137]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.540000e-02 6.350000e-03'
[]
[138]
	type=PointValue
	variable=temp
	point='1.016000e-01 5.080000e-02 0.000000e+00'
[]
[139]
	type=PointValue
	variable=temp
	point='1.016000e-01 5.080000e-02 3.175000e-03'
[]
[140]
	type=PointValue
	variable=temp
	point='1.016000e-01 5.080000e-02 6.350000e-03'
[]
[141]
	type=PointValue
	variable=temp
	point='1.016000e-01 7.620000e-02 0.000000e+00'
[]
[142]
	type=PointValue
	variable=temp
	point='1.016000e-01 7.620000e-02 3.175000e-03'
[]
[143]
	type=PointValue
	variable=temp
	point='1.016000e-01 7.620000e-02 6.350000e-03'
[]
[144]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.016000e-01 0.000000e+00'
[]
[145]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.016000e-01 3.175000e-03'
[]
[146]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.016000e-01 6.350000e-03'
[]
[147]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.270000e-01 0.000000e+00'
[]
[148]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.270000e-01 3.175000e-03'
[]
[149]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.270000e-01 6.350000e-03'
[]
[150]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.524000e-01 0.000000e+00'
[]
[151]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.524000e-01 3.175000e-03'
[]
[152]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.524000e-01 6.350000e-03'
[]
[153]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.778000e-01 0.000000e+00'
[]
[154]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.778000e-01 3.175000e-03'
[]
[155]
	type=PointValue
	variable=temp
	point='1.016000e-01 1.778000e-01 6.350000e-03'
[]
[156]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.032000e-01 0.000000e+00'
[]
[157]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.032000e-01 3.175000e-03'
[]
[158]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.032000e-01 6.350000e-03'
[]
[159]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.286000e-01 0.000000e+00'
[]
[160]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.286000e-01 3.175000e-03'
[]
[161]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.286000e-01 6.350000e-03'
[]
[162]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.540000e-01 0.000000e+00'
[]
[163]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.540000e-01 3.175000e-03'
[]
[164]
	type=PointValue
	variable=temp
	point='1.016000e-01 2.540000e-01 6.350000e-03'
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
    csv=true
[]
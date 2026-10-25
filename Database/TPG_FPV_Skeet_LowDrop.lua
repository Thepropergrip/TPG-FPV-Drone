dofile("Scripts/Database/Weapons/warheads.lua")
local skeet_warhead=predefined_warhead("CBU97")
local single_skeet_cluster={category=CAT_CLUSTER_DESC,name="TPG BLU-108 Low Drop Native Four Skeets",type_name="cluster",cluster_scheme="CBU_97",wsTypeOfWeapon={wsType_Weapon,wsType_Bomb,wsType_Bomb_Cluster,WSTYPE_PLACEHOLDER},scheme={
["BLU_108_panel"]={
["wind_sigma"]=0,
["impulse_sigma"]=0,
["cx_coeff"]={
[1]=1,
[2]=0.4,
[3]=0.4,
[4]=0.4,
[5]=1.4,
},
["spawn_options"]={
[1]={
[1]=0,
[2]=1,
[3]=1,
},
},
["init_pos"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["Ma"]=0.5,
["moment_sigma"]=0,
["I"]=1,
["mass"]=0.01,
["model_name"]="shell",
["op_time"]=0.05,
["init_impulse"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["L"]=1,
["caliber"]=0.1,
["Mw"]=1,
},
["panel3"]={
["impulse_sigma"]=0,
["cx_coeff"]={
[1]=1,
[2]=0.4,
[3]=0.4,
[4]=0.3,
[5]=1.4,
},
["wind_sigma"]=0,
["init_pos"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["Ma"]=0.5,
["moment_sigma"]=0,
["I"]=6,
["mass"]=0.01,
["model_name"]="shell",
["op_time"]=0.05,
["init_impulse"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["L"]=2.3552,
["caliber"]=0.1,
["Mw"]=1,
},
["empty_dispenser"]={
["impulse_sigma"]=0,
["cx_coeff"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
[5]=2,
},
["wind_sigma"]=0,
["spawn_options"]={
[1]={
[1]=2,
[2]=2,
[3]=1,
},
},
["Ma"]=0.03,
["set_start_args"]={
[1]=0,
[2]=1,
[3]=2,
},
["I"]=2,
["mass"]=0.01,
["model_name"]="shell",
["op_time"]=0.05,
["moment_sigma"]=0,
["L"]=2.5,
["caliber"]=0.45,
["Mw"]=0.3,
},
["dispenser"]={
["spawn_weight_loss"]={
[1]=0,
[2]=0,
[3]=0,
},
["impulse_sigma"]=0,
["cx_coeff"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
[5]=2,
},
["caliber"]=0.45,
["I"]=100,
["mass"]=0.01,
["wind_sigma"]=0,
["op_time"]=9000,
["L"]=2.5,
["Mw"]=2.33,
["moment_sigma"]=0,
["spawn_time"]={
[1]=0.02,
[2]=0.04,
[3]=0.06,
},
["Ma"]=0.228,
["set_start_args"]={
[1]=0,
[2]=12,
[3]=13,
},
["model_name"]="shell",
["spawm_args_change"]={
[1]={
[1]=1,
[2]=1,
[3]=1,
},
[2]={
[1]=1,
[2]=12,
[3]=0,
},
[3]={
[1]=2,
[2]=2,
[3]=1,
},
},
["spawn_args_change"]={
[1]={
[1]=1,
[2]=12,
[3]=0,
},
[2]={
[1]=1,
[2]=1,
[3]=0.6,
},
},
["op_spawns"]=3,
},
["panel2"]={
["impulse_sigma"]=0,
["cx_coeff"]={
[1]=1,
[2]=0.4,
[3]=0.4,
[4]=0.3,
[5]=1.4,
},
["wind_sigma"]=0,
["init_pos"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["Ma"]=0.5,
["moment_sigma"]=0,
["I"]=6,
["mass"]=0.01,
["model_name"]="shell",
["op_time"]=0.05,
["init_impulse"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["L"]=2.3552,
["caliber"]=0.1,
["Mw"]=1,
},
["BLU_108"]={
["release_rnd_coeff"]=5,
["impulse_sigma"]=1,
["cx_coeff"]={
[1]=1,
[2]=0.39,
[3]=0.38,
[4]=0.236,
[5]=1.31,
},
["caliber"]=0.133,
["chute_diam"]=1.8,
["op_time"]=9000,
["connectors_model_name"]="cbu97_shaft",
["main_chute_open_speed"]=4,
["explosion_center"]={
[1]={
[1]=0.36,
[2]=0,
[3]=0,
},
[2]={
[1]=-0.44,
[2]=0,
[3]=0,
},
},
["submunition_engine_work_time"]=0.22,
["set_start_args"]={
[1]=13,
},
["spawn_options"]={
[1]={
[1]=0,
[2]=1,
[3]=1,
},
},
["count"]=1,
["submunition_engine_fuel_mass"]=0.1,
["chute_Ma"]=3.8,
["wind_time"]=1,
["opening_speed_k"]=2,
["submunition_engine_rotation_moment"]=9,
["I"]=1,
["mass"]=29.5,
["submunition_engine_impulse"]=56,
["L"]=0.7,
["skeets_release_delay"]=1.05,
["Mw"]=1.6,
["chute_Mw"]=0.16,
["chute_rnd_coeff"]=0.8,
["wind_sigma"]=100,
["submunition_engine_start_height"]=32,
["Ma"]=0.9,
["jump_error_sum"]=360,
["skeets_in_seq_release_delay"]=0.02,
["moment_sigma"]=3,
["model_name"]="cbu97_blu108",
["extr_chute_max_diam"]=0.3,
["explosion_impulse_coeff"]=42,
["effect_count"]=1,
["chute_Cx"]=1.05,
["chute_open_time"]=0.6,
},
["warhead"]=skeet_warhead,
["skeet"]={
["seeker_max_range"]=160,
["release_rnd_coeff"]=12,
["impulse_sigma"]=1,
["cx_coeff"]={
[1]=1,
[2]=0.4,
[3]=0.4,
[4]=0.4,
[5]=1.4,
},
["seeker_max_angle"]=0.3927,
["caliber"]=0.1,
["I"]=1,
["explosion_dont_use_x_axis"]=0,
["wind_sigma"]=1,
["op_time"]=9000,
["seeker_activation_time"]=0.3,
["L"]=1,
["shot_error"]=0.05,
["Mw"]=1,
["model_name"]="cbu97_skeet",
["seeker_rotation_point"]={
[1]=0,
[2]=0,
[3]=0,
},
["moment_sigma"]=1,
["shell_speed"]=500,
["shell_model_name"]="shell",
["omega_impulse_coeff"]=2.4,
["Ma"]=1,
["seeker_local_point"]={
[1]=0.05,
[2]=-0.07,
[3]=0,
},
["set_start_args"]={
[1]=10,
},
["spawn_options"]={
[1]={
[1]=2,
[2]=2,
[3]=4,
},
},
["count"]=4,
["mass"]=5,
["init_pos"]={
[1]={
[1]=0.02,
[2]=-0.11,
[3]=0,
},
[2]={
[1]=0.02,
[2]=0.11,
[3]=0,
},
[3]={
[1]=0.25,
[2]=0,
[3]=-0.11,
},
[4]={
[1]=0.25,
[2]=0,
[3]=0.11,
},
},
["explosion_impulse_coeff"]=0,
["effect_count"]=4,
["aim_lock_efficiency"]=0.66,
},
["panel1"]={
["impulse_sigma"]=0,
["cx_coeff"]={
[1]=1,
[2]=0.4,
[3]=0.4,
[4]=0.3,
[5]=1.4,
},
["wind_sigma"]=0,
["init_pos"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["Ma"]=0.5,
["moment_sigma"]=0,
["I"]=6,
["mass"]=0.01,
["model_name"]="shell",
["op_time"]=0.05,
["init_impulse"]={
[1]={
[1]=0,
[2]=0,
[3]=0,
},
},
["L"]=2.3552,
["caliber"]=0.1,
["Mw"]=1,
},
}}
single_skeet_cluster.scheme.BLU_108.submunition_engine_start_height=32
single_skeet_cluster.scheme.skeet.seeker_max_angle=.785
single_skeet_cluster.scheme.skeet.aim_lock_efficiency=.85
single_skeet_cluster.scheme.skeet.shell_speed=750
single_skeet_cluster.scheme.BLU_108.wind_sigma=5
single_skeet_cluster.scheme.BLU_108.moment_sigma=2
single_skeet_cluster.scheme.BLU_108.chute_rnd_coeff=.5
single_skeet_cluster.scheme.skeet.moment_sigma=.1
for _,b in pairs(single_skeet_cluster.scheme)do if type(b)=='table'then for _,k in ipairs({'wind_sigma','impulse_sigma','moment_sigma','release_rnd_coeff','chute_rnd_coeff'})do if b[k]then b[k]=0 end end end end
local c=single_skeet_cluster.scheme
local d=c.dispenser
for _,k in ipairs({'mass','caliber','L','I','Ma','Mw','cx_coeff'})do d[k]=c.BLU_108[k]end
for _,k in ipairs({'empty_dispenser','panel1','panel2','panel3','BLU_108_panel'})do local b=c[k];b.mass=.01;b.caliber=.01;b.L=.01;b.I=.01;b.Ma=.01;b.Mw=.01;b.op_time=50 end
declare_weapon(single_skeet_cluster)

local single_skeet = {
    category = CAT_MISSILES,
    name = "TPG_FPV_AI_RC3_BLU108_4SKEET_LOWDROP",
    user_name = _("FPV BLU-108 Low Drop - 4 native Skeets"),
    display_name_short = _("BLU-108 4-Skeet"),
    model = "cbu97_blu108",
    wsTypeOfWeapon = {
        wsType_Weapon,
        wsType_Missile,
        wsType_AS_Missile,
        WSTYPE_PLACEHOLDER,
    },
    scheme = "../bombs/bomb-cassette_new",
        M=0.5,Diam=50,Escort=0,Head_Type=5,Head_Form=1,sigma={0,0,0},
        H_max=10000,H_min=0,H_min_t=0,D_max=2000,D_min=0,Range_max=2000,
        Life_Time=120,Nr_max=1,v_min=0,v_mid=20,Mach_max=1,
        t_b=0,t_acc=0,t_marsh=0,Cx_pil=0,
        Fi_start=math.pi,Fi_rak=math.pi,Fi_excort=math.pi,Fi_search=99.9,OmViz_max=99.9,
        X_back=0,Y_back=0,Z_back=0,KillDistance=0,
        LaunchDistData={17,15,0,1,2,3,4,5,6,8,10,12,15,20,25,40,60,0,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,2,500.004,500.6298,501.2555,501.8813,502.5071,503.1329,503.7586,505.0102,506.2617,507.5133,509.3906,512.5195,515.6484,525.035,537.5505,5,500.025,501.0144,502.0038,502.9932,503.9826,504.972,505.9614,507.9402,509.919,511.8978,514.866,519.8129,524.7599,539.601,559.389,8,500.064,501.3154,502.5668,503.8182,505.0696,506.321,507.5724,510.0752,512.578,515.0808,518.8351,525.0921,531.3492,550.1206,575.1492,10,500.1,501.499,502.898,504.297,505.696,507.095,508.4941,511.2921,514.0901,516.8882,521.0853,528.0804,535.0756,556.0614,584.0428,15,500.2249,501.938,503.651,505.364,507.077,508.79,510.503,513.9291,517.3552,520.7813,525.9205,534.4859,543.0514,568.7486,603.0127,20,500.3998,502.3772,504.3545,506.3318,508.3092,510.2865,512.2639,516.2187,520.1735,524.1284,530.0608,539.9483,549.8361,579.5008,619.0565,25,500.6246,502.8343,505.0441,507.2538,509.4636,511.6734,513.8833,518.303,522.7228,527.1427,533.7728,544.8232,555.8741,589.0294,633.2416,35,501.2235,503.835,506.4465,509.0581,511.6698,514.2815,516.8933,522.117,527.341,532.5652,540.402,553.4643,566.5278,605.725,658.001,50,502.4938,505.6072,508.7209,511.8347,514.9488,518.063,521.1774,527.4066,533.6366,539.8672,549.2142,564.7955,580.3803,627.1523,689.5491,65,504.2073,507.7452,511.2836,514.8223,518.3615,521.901,525.4409,532.5218,539.6042,546.6879,557.3159,575.0354,592.762,645.9783,717.002,80,506.3596,510.268,514.1772,518.0872,521.9978,525.9092,529.8213,537.6474,545.4761,553.3073,565.0585,584.6548,604.2636,663.1543,741.7932,100,509.902,514.2417,518.5829,522.9254,527.2694,531.6147,535.9613,544.6582,553.36,562.0665,575.1343,596.9344,618.7575,684.343,772,150,522.0153,527.2085,532.4061,537.6082,542.8145,548.0249,553.2394,563.6799,574.1351,584.6043,600.3328,626.6069,652.9484,732.3036,838.6876,300,583.0952,589.6804,596.2913,602.9273,609.5873,616.2707,622.9766,636.4535,650.0124,663.6483,684.2365,718.8742,753.8685,860.5535,1005.642,600,781.025,788.0078,795.0771,802.2305,809.4659,816.781,824.1737,839.1837,854.4801,870.0477,893.8766,934.7559,976.9318,1109.739,1297.404,1000,1118.034,1124.361,1130.827,1137.427,1144.161,1151.025,1158.018,1172.38,1187.227,1202.543,1226.356,1268.139,1312.325,1457.05,1671.662},MinLaunchDistData={17,15,0,1,2,3,4,5,6,8,10,12,15,20,25,40,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},

    class_name = "wAmmunitionCbu",
    type = 6,
    warhead={mass=0,expl_mass=0,other_factors={0,0,0},obj_factors={0,0},concrete_factors={0,0,0},cumulative_factor=0,concrete_obj_factor=0,cumulative_thickness=0,piercing_mass=0,caliber=.133},
    mass = 29.50,
    hMin = 0,
    hMax = 12000,
    Cx = 0.0,
    VyHold = -100,
    Ag = -1.23,
    Reflection = 0.01,
    fm = {

        mass = 0.50,
        caliber = 0.050,
        cx_coeff = {1.0, 0.29, 0.71, 0.14, 1.28},
        L = 0.15,
        I = 1.0,
        Ma = 0.68,
        Mw = 1.00,
        cx_factor = 0,
        wind_time = 1000,
        wind_sigma = 8,
    },
    launcher = {
        cluster = single_skeet_cluster.descriptor,
    },
    arming_delay = {
        enabled = true,
        delay_time = 0.10,
    },
    shape_table_data = {{
        name = "TPG_FPV_AI_RC3_BLU108_4SKEET_LOWDROP",
        file = "cbu97_blu108",
        life = 1,
        fire = {0, 1},
        username = _("FPV BLU-108 Low Drop - 4 native Skeets"),
        index = WSTYPE_PLACEHOLDER,
    }},
    targeting_data = {
        char_time = 20.32,
        bomblet_char_time = 20.32,
    },
}

declare_weapon(single_skeet)

declare_loadout({
    ejectVelocity=0,
settings={{id="NFP_fuze_type_nose",control="comboList",defValue="FZU39",label="Nose Fuze Well",values={{id="FZU39",dispName="Integral Fuze + FZU-39"}}},{id="function_delay_ctrl_FZU39_SUU65_SFW",control="comboList",defValue=0.63,label="Arm Delay",values={{id=0.63,dispName="0.63"}}},{id="function_altitude_ctrl_FZU39_SUU65_SFW",control="comboList",defValue=900,label="Airburst Height",values={{id=900,dispName="900"}}}},
    category = CAT_MISSILES,
    CLSID = "{TPG_FPV_AI_RC3_BLU108_4SKEET_LOWDROP}",
    attribute = single_skeet.wsTypeOfWeapon,
    Count = 1,
    Cx_pil = single_skeet.Cx,
    Picture = "CBU.png",
    displayName = _("FPV BLU-108 Low Drop - 4 native Skeets"),
    Weight = single_skeet.mass,
    Elements = {
        {
            ShapeName = "cbu97_blu108",
            Position = {0, 0, 0},

            DrawArgs = {{13, 1}},

            Rotation = {0, 0, -90},
        },
    },
})

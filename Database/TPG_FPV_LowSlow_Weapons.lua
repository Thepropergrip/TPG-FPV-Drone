dofile("Scripts/Database/Weapons/warheads.lua")

local grenade_warhead = {
    mass = 0.31,
    expl_mass = 0.11,
    other_factors = {1.0, 1.0, 1.0},
    obj_factors = {1.0, 1.0},
    concrete_factors = {1.0, 1.0, 1.0},
    cumulative_factor = 0.0,
    concrete_obj_factor = 0.4,
    cumulative_thickness = 0.0,
    piercing_mass = 0.02,
    caliber = 0.058,
}

local mine_warhead = {
    mass = 12.50,
    expl_mass = 10.50,
    other_factors = {1.25, 1.25, 1.25},
    obj_factors = {1.75, 1.75},
    concrete_factors = {1.15, 1.15, 1.15},
    cumulative_factor = 0.85,
    concrete_obj_factor = 1.10,
    cumulative_thickness = 0.35,
    piercing_mass = 3.00,
    caliber = 0.266,
}

local function declare_fpv_bomb(def)
    local weapon = {
        category       = CAT_MISSILES,
        name           = def.name,
        user_name      = _(def.display_name),
        display_name_short = def.short_name,
        model          = def.model,
        wsTypeOfWeapon = {wsType_Weapon, wsType_Missile, wsType_AS_Missile, WSTYPE_PLACEHOLDER},
        scheme         = "../bombs/bomb_common_v2",
        class_name="wAmmunition",
        M=0.5,Diam=50,Escort=0,Head_Type=5,Head_Form=1,sigma={0,0,0},
        H_max=10000,H_min=0,H_min_t=0,D_max=2000,D_min=0,Range_max=2000,
        Life_Time=120,Nr_max=1,v_min=0,v_mid=20,Mach_max=1,
        t_b=0,t_acc=0,t_marsh=0,Cx_pil=0,
        Fi_start=math.pi,Fi_rak=math.pi,Fi_excort=math.pi,Fi_search=99.9,OmViz_max=99.9,
        X_back=0,Y_back=0,Z_back=0,KillDistance=0,
        LaunchDistData={17,15,0,1,2,3,4,5,6,8,10,12,15,20,25,40,60,0,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,2,500.004,500.6298,501.2555,501.8813,502.5071,503.1329,503.7586,505.0102,506.2617,507.5133,509.3906,512.5195,515.6484,525.035,537.5505,5,500.025,501.0144,502.0038,502.9932,503.9826,504.972,505.9614,507.9402,509.919,511.8978,514.866,519.8129,524.7599,539.601,559.389,8,500.064,501.3154,502.5668,503.8182,505.0696,506.321,507.5724,510.0752,512.578,515.0808,518.8351,525.0921,531.3492,550.1206,575.1492,10,500.1,501.499,502.898,504.297,505.696,507.095,508.4941,511.2921,514.0901,516.8882,521.0853,528.0804,535.0756,556.0614,584.0428,15,500.2249,501.938,503.651,505.364,507.077,508.79,510.503,513.9291,517.3552,520.7813,525.9205,534.4859,543.0514,568.7486,603.0127,20,500.3998,502.3772,504.3545,506.3318,508.3092,510.2865,512.2639,516.2187,520.1735,524.1284,530.0608,539.9483,549.8361,579.5008,619.0565,25,500.6246,502.8343,505.0441,507.2538,509.4636,511.6734,513.8833,518.303,522.7228,527.1427,533.7728,544.8232,555.8741,589.0294,633.2416,35,501.2235,503.835,506.4465,509.0581,511.6698,514.2815,516.8933,522.117,527.341,532.5652,540.402,553.4643,566.5278,605.725,658.001,50,502.4938,505.6072,508.7209,511.8347,514.9488,518.063,521.1774,527.4066,533.6366,539.8672,549.2142,564.7955,580.3803,627.1523,689.5491,65,504.2073,507.7452,511.2836,514.8223,518.3615,521.901,525.4409,532.5218,539.6042,546.6879,557.3159,575.0354,592.762,645.9783,717.002,80,506.3596,510.268,514.1772,518.0872,521.9978,525.9092,529.8213,537.6474,545.4761,553.3073,565.0585,584.6548,604.2636,663.1543,741.7932,100,509.902,514.2417,518.5829,522.9254,527.2694,531.6147,535.9613,544.6582,553.36,562.0665,575.1343,596.9344,618.7575,684.343,772,150,522.0153,527.2085,532.4061,537.6082,542.8145,548.0249,553.2394,563.6799,574.1351,584.6043,600.3328,626.6069,652.9484,732.3036,838.6876,300,583.0952,589.6804,596.2913,602.9273,609.5873,616.2707,622.9766,636.4535,650.0124,663.6483,684.2365,718.8742,753.8685,860.5535,1005.642,600,781.025,788.0078,795.0771,802.2305,809.4659,816.781,824.1737,839.1837,854.4801,870.0477,893.8766,934.7559,976.9318,1109.739,1297.404,1000,1118.034,1124.361,1130.827,1137.427,1144.161,1151.025,1158.018,1172.38,1187.227,1202.543,1226.356,1268.139,1312.325,1457.05,1671.662},MinLaunchDistData={17,15,0,1,2,3,4,5,6,8,10,12,15,20,25,40,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},

        type           = 6,
        mass           = def.mass,
        hMin           = 0.0,
        hMax           = def.h_max,
        Cx             = def.cx,
        VyHold         = -100.0,
        Ag             = -1.23,
        Reflection     = def.reflection or 0.01,
        fm = {

            mass       = def.ballistic_mass or def.mass,
            caliber    = def.caliber,
            cx_coeff   = def.cx_coeff,
            L          = def.length,
            I          = def.inertia,
            Ma         = def.ma or 0,
            Mw         = def.mw or 0,
            cx_factor  = def.cx_factor,
            wind_time  = def.wind_time,
            wind_sigma = def.wind_sigma,
        },
        warhead        = def.warhead,
        shape_table_data = {
            {
                name     = def.name,
                file     = def.shape_file,
                life     = 1,
                fire     = {0, 1},
                username = _(def.display_name),
                index    = WSTYPE_PLACEHOLDER,
            },
        },
        targeting_data = {
            char_time = def.char_time,
        },
    }

    if def.visual_fall_model then
        weapon.model = def.visual_fall_model
        weapon.shape_table_data[1].file = def.visual_fall_model
        weapon.scheme = "../bombs/bomb_parachute_v2"
        weapon.fm.cx_factor = 1.0
        weapon.control = {open_delay = 0.15}
        weapon.targeting_data.chute_char_time = def.char_time
        weapon.targeting_data.chute_open_time = 0.15
    end

    declare_weapon(weapon)

    local elements = {}
    if def.count == 1 then
        elements[1] = {ShapeName = def.model}
    else
        elements = {
            {ShapeName = "", IsAdapter = true},
            {Position = {0.05, 0.0, 0.0}, ShapeName = def.model},
            {Position = {-0.05, 0.0, 0.0}, ShapeName = def.model, Rotation = {0, 180, 0}},
        }
    end

    declare_loadout({
        category          = CAT_MISSILES,
        ejectVelocity     = 0,
        CLSID             = def.clsid,
        attribute         = weapon.wsTypeOfWeapon,
        Count             = def.count,
        Cx_pil            = weapon.Cx,
        Picture           = def.picture,
        displayName       = _(def.display_name),
        Weight            = def.loadout_weight,
        Elements          = elements,
    })
end

declare_fpv_bomb({
    name         = "TPG_FPV_AI_RC3_ACCU_DROP_RGD5_FRONT_DEMON_LOWSLOW",
    display_name = "FPV F1 Front Low-Slow Prototype",
    short_name   = "F1 Front Accu.",
    clsid        = "{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_FRONT_DEMON_LOWSLOW}",
    model        = "TPG_DEMON_F1_RGD5_FRONT_CARRIED",
    visual_fall_model = "TPG_DEMON_F1_RGD5_FRONT_FALL",
    picture      = "icon_RGD-5.png",
    count        = 1,
    mass         = 0.50,
    loadout_weight = 0.50,
    h_max        = 10000.0,
    shape_file   = "TPG_RC3_ACCU_RGD5_FRONT",
    caliber      = 0.05,
    length       = 0.15,
    inertia      = 1.0,
    cx           = 0.0,
    cx_coeff     = {1.0, 0.29, 0.71, 0.14, 1.28},
    cx_factor    = 0.0,
    wind_time    = 1000.0,
    wind_sigma   = 8.0,
    warhead      = grenade_warhead,
    char_time    = 20.32,
})

declare_fpv_bomb({
    name         = "TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON_LOWSLOW",
    display_name = "FPV F1 Rear Low-Slow Prototype",
    short_name   = "F1 Rear Accu.",
    clsid        = "{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON_LOWSLOW}",

    ws_subtype   = wsType_Bomb_BetAB,
    model        = "TPG_DEMON_F1_RGD5_REAR_CARRIED",
    visual_fall_model = "TPG_DEMON_F1_RGD5_REAR_FALL",
    picture      = "icon_RGD-5.png",
    count        = 1,
    mass         = 0.50,
    loadout_weight = 0.50,
    h_max        = 10000.0,
    shape_file   = "TPG_RC3_ACCU_RGD5_REAR",
    caliber      = 0.05,
    length       = 0.15,
    inertia      = 1.0,
    cx           = 0.0,
    cx_coeff     = {1.0, 0.29, 0.71, 0.14, 1.28},
    cx_factor    = 0.0,
    wind_time    = 1000.0,
    wind_sigma   = 8.0,
    warhead      = grenade_warhead,
    char_time    = 20.32,
})

declare_fpv_bomb({
    name           = "TPG_FPV_AI_RC3_ACCU_DROP_AT_MINE_DEMON_LOWSLOW",
    display_name   = "FPV AT Mine Low-Slow Prototype",
    short_name     = "AT Mine Accu.",
    clsid          = "{TPG_FPV_AI_RC3_ACCU_DROP_AT_MINE_DEMON_LOWSLOW}",
    model          = "TPG_RC3_ACCU_AT_Mine",
    picture        = "TPG_AT_Mine.png",
    count          = 1,
    mass           = 12.50,
    loadout_weight = 12.50,
    ballistic_mass = 0.50,
    h_max          = 12000.0,
    reflection     = 0.03,
    shape_file     = "TPG_RC3_ACCU_AT_Mine",
    caliber        = 0.05,
    length         = 0.15,
    inertia        = 1.0,
    cx             = 0.0,
    cx_coeff       = {1.0, 0.29, 0.71, 0.14, 1.28},
    cx_factor      = 0.0,
    wind_time      = 1000.0,
    wind_sigma     = 8.0,
    warhead        = mine_warhead,
    char_time      = 20.32,
})

declare_fpv_bomb({
 name="TPG_FPV_AI_RC3_DEMON_CORE_SINGLE_LOWSLOW",
 display_name="FPV Demon Core Grenade (Low/Slow)",short_name="Demon Low/Slow",
 clsid="{TPG_FPV_AI_RC3_DEMON_CORE_SINGLE_LOWSLOW}",
 model="TPG_FPV_DEMON_CORE_CARRIED",visual_fall_model="TPG_FPV_DEMON_CORE_FALL",
 picture="icon_RGD-5.png",count=1,mass=.5,loadout_weight=.5,h_max=10000,
 shape_file="TPG_FPV_DEMON_CORE_FALL",caliber=.05,length=.15,inertia=1,cx=0,
 cx_coeff={1,.29,.71,.14,1.28},cx_factor=1,wind_time=1000,wind_sigma=8,char_time=20.32,
 warhead={mass=3855.535145,expl_mass=3855.535145,other_factors={1,1,1},obj_factors={1,1},concrete_factors={1,1,1},cumulative_factor=0,concrete_obj_factor=.4,cumulative_thickness=0,piercing_mass=.02,caliber=.058}
})

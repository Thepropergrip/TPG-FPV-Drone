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
        category       = CAT_BOMBS,
        name           = def.name,
        user_name      = _(def.display_name),
        display_name_short = def.short_name,
        model          = def.model,
        wsTypeOfWeapon = {wsType_Weapon, wsType_Bomb, def.ws_subtype or wsType_Bomb_A, WSTYPE_PLACEHOLDER},
        scheme         = "bomb_common_v2",
        type           = 0,
        mass           = def.mass,
        hMin           = 0.0,
        hMax           = def.h_max,
        Cx             = def.cx,
        VyHold         = -100.0,
        Ag             = -1.23,
        Reflection     = def.reflection,
        fm = {

            mass       = def.ballistic_mass or def.mass,
            caliber    = def.caliber,
            cx_coeff   = def.cx_coeff,
            L          = def.length,
            I          = def.inertia,
            Ma         = def.ma,
            Mw         = def.mw,
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
        weapon.scheme = "bomb_parachute_v2"
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
        category          = CAT_BOMBS,
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
    name         = "TPG_FPV_AI_RC3_ACCU_DROP_RGD5_FRONT_DEMON",
    display_name = "FPV RC3 Drop F1 Front Accu.",
    short_name   = "F1 Front Accu.",
    clsid        = "{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_FRONT_DEMON}",
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
    name         = "TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON",
    display_name = "FPV RC3 Drop F1 Rear Accu.",
    short_name   = "F1 Rear Accu.",
    clsid        = "{TPG_FPV_AI_RC3_ACCU_DROP_RGD5_REAR_DEMON}",

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
    name           = "TPG_FPV_AI_RC3_ACCU_DROP_AT_MINE_DEMON",
    display_name   = "FPV RC3 Drop Anti-Tank Mine Accu. (Exclusive)",
    short_name     = "AT Mine Accu.",
    clsid          = "{TPG_FPV_AI_RC3_ACCU_DROP_AT_MINE_DEMON}",
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

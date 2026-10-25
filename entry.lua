local self_ID = "TPG_FPV_AI_RC3_DEMON"

declare_plugin(self_ID,
{
    dirName       = current_mod_path,
    displayName   = _("TPG FPV Drone"),
    fileMenuName  = _("TPG FPV Drone"),
    developerName = _("TPG"),
    state         = "installed",
    version       = "1.1",
    info = _("AI-controlled FPV drone with F1 grenades, an anti-tank mine, a four-Skeet BLU-108, or the fictional Demon Core Grenade. Includes Crawl and Low Slow profiles."),
})

mount_vfs_model_path(current_mod_path .. "/Shapes")
mount_vfs_liveries_path(current_mod_path .. "/Liveries")
mount_vfs_texture_path(current_mod_path .. "/Textures")
mount_vfs_texture_path(current_mod_path .. "/ImagesGui")

dofile(current_mod_path .. "/Database/TPG_FPV_Skeet_Weapons.lua")
dofile(current_mod_path .. "/Database/TPG_FPV_Weapons.lua")
dofile(current_mod_path .. "/Database/TPG_FPV_Demon_Weapon.lua")
dofile(current_mod_path .. "/TPG_FPV_Drone.lua")

dofile(current_mod_path .. "/TPG_FPV_LowDrop_Addon.lua")

plugin_done()

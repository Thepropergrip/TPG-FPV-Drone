# TPG FPV Drone

Version **1.1**

TPG FPV Drone is an **AI-controlled** drone mod for DCS World, forked from **CrudeCoder's DCS FPV Drone**, with additional payloads and low-drop flight profiles.

The original mod is available at [CrudeCoder1/DCS-FPV-Drone](https://github.com/CrudeCoder1/DCS-FPV-Drone). See [CREDITS.md](CREDITS.md) for credits and [LICENSE](LICENSE) for the original GPLv3 license.

## Installation

1. Extract the **TPG FPV Drone** folder into `Saved Games/<DCS profile>/Mods/aircraft/`.
2. Remove any older installation of this TPG mod from that folder. Keep only one copy installed.
3. Restart DCS.

In Mission Editor, choose one of these helicopter entries:

| Aircraft | Use |
|---|---|
| TPG FPV Drone Low Slow | Recommended for low-drop missions, including BLU-108 Skeets. |
| TPG FPV Drone Crawl | Slower approaches and near-hover grenade drops. |
| TPG FPV Drone | Original flight and payload configuration for existing missions. |

## Payloads

Station 1 carries one BLU-108 with four Skeets, one anti-tank mine, one Demon Core Grenade, or one F1 grenade. A second F1 grenade can be carried on station 2. The other payloads require station 2 to be empty.

Use the matching **Low Drop / Low Slow** stores with the Crawl and Low Slow aircraft. The original aircraft uses its original stores.

The Demon Core Grenade is a fictional payload with an 8,500 lb HE game effect. Its blast destroys the carrier at low altitude. Low mine drops can also damage or destroy the carrier. Skeets search an area and may engage a nearby vehicle instead of the selected target.

## Mission setup

Crawl and Low Slow use the supplied mission helper for low drops. Load `MissionTools/FPV_Store_Tasks.lua` using **MISSION START → DO SCRIPT FILE**. No Saved Games hook is required for these aircraft.

See [Mission Setup](Docs/MISSION_SETUP.md) for waypoint settings and the helper calls.

For the original aircraft, load `MissionTools/FPV_DEMON_ReleaseGuard.lua` at mission start when using two F1 grenades with broad bomb tasks. It spaces the releases by ten seconds. Use one drone per group, **Expend One**, and a separate attack task for each grenade.

To apply that guard automatically to existing missions, run `Integration/Install-ReleaseGuard.ps1`, or copy `Integration/TPG_FPV_DEMON_ReleaseGuard.lua` into `Saved Games/<DCS profile>/Scripts/Hooks/`. Install it on the host or server for multiplayer.

Existing mission aircraft and payload identifiers are retained.

# Mission setup

## Crawl and Low Slow

Use **Ground Attack**, **Excellent** skill, one drone per group, and stationary targets. Start with a straight, clear approach over the target and continue the route beyond it. Remove automatic CAS/search tasks that could start a competing attack.

Set route height to **65 m / 213 ft above the terrain**. With BARO waypoints, add the local terrain elevation to the waypoint altitude.

| Payload | Aircraft | Waypoint speed |
|---|---|---|
| BLU-108 / four Skeets | Low Slow | 3 m/s / 5.8 kt |
| BLU-108 / four Skeets, near-hover option | Crawl | 1.3 m/s / 2.5 kt |
| F1 grenade | Crawl | 1.3 m/s / 2.5 kt |
| Anti-tank mine | Low Slow | 3 m/s / 5.8 kt |
| Demon Core Grenade | Crawl | 1.3 m/s / 2.5 kt |

DCS adjusts speed and height during the attack. The waypoint values are approach settings, not fixed release values. Terrain, obstacles, target layout, and wind affect the result.

Load `MissionTools/FPV_Store_Tasks.lua` once using **MISSION START → DO SCRIPT FILE**.

### BLU-108 / Skeets

Select **FPV BLU-108 Low Drop - 4 native Skeets** on station 1. Keep its FZU-39 settings at **0.63 delay** and **900 airburst control**.

Allow at least 300 m of straight approach for Low Slow, or 200 m for Crawl. At mission start, call:

```lua
FPV_STORES.attackWhenNear('Drone group', 'Target unit')
```

Use the drone's group name and the target's unit name. Place the drone on an approach facing the target before calling the helper. An optional third argument sets the route heading in radians: `0` points along world X and `math.pi / 2` along world Z.

The helper holds fire during the approach and starts the attack close to the target. Use it instead of an ordinary Bombing task aimed directly at the target with these stores.

Low Slow is the more consistent Skeet option. Crawl offers a lower release, with less consistent area coverage. Neither guarantees a hit on a particular vehicle.

### F1, mine, and Demon

Hold fire during the approach:

```lua
FPV_STORES.prepare('Drone group')
```

After 50 seconds of straight navigation toward the target, call:

```lua
FPV_STORES.attackUnit('Drone group', 'Target unit')
```

Each call requests one store. Add another attack task for the second F1 grenade. Leave enough distance and time for the next approach. A third argument can set the approach heading as described above.

## Original aircraft

The original **TPG FPV Drone** entry retains its existing mission behavior. For two F1 grenades under broad bomb tasks, use the release guard described in the README. It resumes **Open Fire** after each ten-second hold.

Missions with a different desired ROE can set an override before the first drop:

```lua
TPG_FPV_DEMON_RELEASE_GUARD_CONFIG = {
    groups = {
        ['Drone group'] = { resumeROE = AI.Option.Air.val.ROE.WEAPON_FREE }
    }
}
```

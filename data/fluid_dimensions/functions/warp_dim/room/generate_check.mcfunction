# From: warp_dim/teleport/warp
# In: warp
# Designed to only complete once

forceload add -1 -1 0 0
execute unless score $WD_Generated fd.wd_generated matches 1 positioned 0.0 0.0 0.0 run function fluid_dimensions:warp_dim/room/generate
scoreboard players set $WD_Generated fd.wd_generated 1
forceload remove -1 -1 0 0

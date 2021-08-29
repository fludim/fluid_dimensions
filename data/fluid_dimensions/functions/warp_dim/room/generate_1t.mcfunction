# From: warp_dim/room/generate
# Generates the Rocks

# Position Markers
spreadplayers 0.0 0.0 1 10.0 false @e[type=marker,tag=fd.warp_dim_rock,x=0]
execute as @e[type=marker,tag=fd.warp_dim_rock,x=0] at @s run function fluid_dimensions:warp_dim/room/marker_spread

# Spawn Rocks
execute as @e[type=marker,tag=fd.warp_dim_rock,x=0] at @s run setblock ~ ~ ~ deepslate

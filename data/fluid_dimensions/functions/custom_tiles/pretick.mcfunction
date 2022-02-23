# From: tick

# Custom blocks

# Avoid a bunch of @e by selecting placed ores once
execute as @e[type=minecraft:glow_item_frame,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/tick

# Other Stuff

# Ore generation markers (throttle and check if player in a range)
execute as @e[type=marker,tag=fd.ore_spawn,limit=64,sort=random] at @s positioned ~-128 -64 ~-128 if entity @a[dx=256,dy=256,dz=256] run function fluid_dimensions:custom_tiles/determine

# Reset block breaking scores
scoreboard players reset @a fd.mine_bstone
scoreboard players reset @a fd.mine_eblock
scoreboard players reset @a fd.mine_iblock

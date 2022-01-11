# From: tick

# Custom blocks

# Avoid a bunch of @e by selecting placed ores once
execute as @e[type=minecraft:glow_item_frame,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/tick

# Other Stuff

# Ore generation markers
execute as @e[type=marker,tag=fd.ore_spawn,limit=32] at @s run function fluid_dimensions:custom_tiles/determine

# Reset block breaking scores
scoreboard players reset @a fd.mine_bstone
scoreboard players reset @a fd.mine_eblock
scoreboard players reset @a fd.mine_iblock

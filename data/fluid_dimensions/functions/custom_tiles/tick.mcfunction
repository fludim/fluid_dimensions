#From: tick

# Nullite
execute as @e[type=minecraft:glow_item_frame,tag=fd.nullite_ore,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/nullite_ore/block

# Garnet
execute as @e[type=minecraft:glow_item_frame,tag=fd.garnet_ore,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/garnet_ore/block

# Ore generation markers
execute as @e[type=marker,tag=fd.ore_spawn,limit=32] at @s run function fluid_dimensions:custom_tiles/determine

# Reset fd.mine_bstone
scoreboard players reset @a fd.mine_bstone
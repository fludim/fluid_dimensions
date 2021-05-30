#From: tick

# Nullite
execute as @e[type=minecraft:glow_item_frame,tag=fd.nullite_ore,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/nullite_ore/block

# Garnet
execute as @e[type=minecraft:glow_item_frame,tag=fd.garnet_ore,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/garnet_ore/block

# Reset fd.mine_bstone
scoreboard players reset @a fd.mine_bstone
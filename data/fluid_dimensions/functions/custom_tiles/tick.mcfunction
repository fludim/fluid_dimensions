# From: tick

# Nullite Ore
execute as @e[type=minecraft:glow_item_frame,tag=fd.nullite_ore,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/nullite_ore/block

# Garnet Ore
execute as @e[type=minecraft:glow_item_frame,tag=fd.garnet_ore,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/garnet_ore/block

# Garnet Block
execute as @e[type=minecraft:glow_item_frame,tag=fd.garnet_block,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/garnet_block/block

# Nullite Block
execute as @e[type=minecraft:glow_item_frame,tag=fd.nulliron_block,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/nulliron_block/block

# Ocular Forge
execute as @e[type=minecraft:glow_item_frame,tag=fd.ocular_forge,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/ocular_forge/block

# Warp Dimension Block
execute as @e[type=minecraft:glow_item_frame,tag=fd.warp_dimension_block,tag=fd.ore_placed] at @s run function fluid_dimensions:custom_tiles/warp_dimension_block/block

# Ore generation markers
execute as @e[type=marker,tag=fd.ore_spawn,limit=32] at @s run function fluid_dimensions:custom_tiles/determine

# Reset block breaking scores
scoreboard players reset @a fd.mine_bstone
scoreboard players reset @a fd.mine_eblock
scoreboard players reset @a fd.mine_iblock

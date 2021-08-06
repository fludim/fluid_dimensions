# From: custom_tiles/tick

execute unless block ~ ~ ~ minecraft:emerald_block run function fluid_dimensions:custom_tiles/piston/piston

execute if entity @s[tag=fd.ore_break] run function fluid_dimensions:custom_tiles/garnet_block/break

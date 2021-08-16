# From: custom_tiles/tick

execute unless block ~ ~ ~ minecraft:blackstone run function fluid_dimensions:custom_tiles/piston/piston

execute if entity @s[tag=fd.ore_break] run function fluid_dimensions:custom_tiles/garnet_ore/break

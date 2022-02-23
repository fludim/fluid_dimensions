# From: custom_tiles/y_spread

execute store result score @s fd.temp run data get entity @s Pos[1]
scoreboard players operation @s fd.temp -= $ore_depth fd.const
execute store result entity @s Pos[1] double 1 run scoreboard players get @s fd.temp
tag @s remove fd.ore_needs_y_spread

# Update position context, check for blackstone as y pos has been randomised
execute at @s if block ~ ~ ~ minecraft:blackstone run function fluid_dimensions:custom_tiles/determine_ore

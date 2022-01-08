# From: custom_tiles/y_spread

execute store result score @s fd.temp run data get entity @s Pos[1]
scoreboard players operation @s fd.temp -= $ore_depth fd.const
execute store result entity @s Pos[1] double 1 run scoreboard players get @s fd.temp
tag @s remove fd.ore_needs_y_spread

###tellraw @a [{"score":{"name":"@s","objective":"fd.temp"},"color":"green","italic":false},{"nbt":"Pos[1]","entity":"@s","color":"red","italic":false}]

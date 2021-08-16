# From: i/tick/carrier

# Stores Y motion, reverses if over threshold
execute store result score @s fd.temp run data get entity @s Motion[1] 1000
execute if score @s fd.temp matches 165.. run scoreboard players remove @s fd.temp 380
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s fd.temp
scoreboard players reset @s fd.temp

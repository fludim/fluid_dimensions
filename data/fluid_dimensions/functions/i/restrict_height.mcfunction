# From: i/tick/carrier

# Stores Y motion, reverses if over threshold
execute store result score @s fd.motion run data get entity @s Motion[1] 1000
execute if score @s fd.motion matches 175.. run scoreboard players remove @s fd.motion 400
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s fd.motion

# From: i/stage/3
# Reverses the direction of projectiles

tag @s add fd.proj_saved

execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] -6000
execute store result entity @s Motion[1] double 0.0001 run data get entity @s Motion[1] -3000
execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] -6000

# From: 10ticks (as fd.i)

# Suffocation prot (?)


# Put health into a score
execute store result score @s fd.health run data get entity @s Health 100

# Test for each 'third' accurate to ~0.01 points
execute if score @s fd.health matches 33334..50000 run scoreboard players set @s fd.i_stage 1
execute if score @s fd.health matches 16667..33333 run scoreboard players set @s fd.i_stage 2
execute if score @s fd.health matches 00000..16666 run scoreboard players set @s fd.i_stage 3

# Stage 1
execute if score @s fd.i_stage matches 1 run attribute @s minecraft:generic.armor base set 12
execute if score @s fd.i_stage matches 1 positioned ~ ~-1.6 ~ run attribute @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] minecraft:generic.attack_damage base set 10

# Stage 2
execute if score @s fd.i_stage matches 2 run attribute @s minecraft:generic.armor base set 18
execute if score @s fd.i_stage matches 2 positioned ~ ~-1.6 ~ run attribute @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] minecraft:generic.attack_damage base set 15

# Stage 3
execute if score @s fd.i_stage matches 3 run attribute @s minecraft:generic.armor base set 24
execute if score @s fd.i_stage matches 3 positioned ~ ~-1.6 ~ run attribute @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] minecraft:generic.attack_damage base set 20

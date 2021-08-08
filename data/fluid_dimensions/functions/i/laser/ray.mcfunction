# From: i/laser/stary_ray, i/laser/ray

execute at @s if score @s fd.i_laser_long matches 1.. facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score @s fd.i_laser_long matches ..78 run particle minecraft:dust 0.9 0 0 0.2 ^ ^ ^-0.5 0 0 0 0 1
execute if score @s fd.i_laser_long matches 79.. run particle minecraft:dust_color_transition 0.9 0 0 1 0.1 0 0 ^ ^ ^-0.5 0 0 0 0 1
execute if score #hit fd.i_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!fd.i_laser,dx=0,sort=nearest] run function fluid_dimensions:i/laser/check_hit_entity
execute unless block ~ ~ ~ #fluid_dimensions:air run function fluid_dimensions:i/laser/hit_block
scoreboard players add #distance fd.i_laser 1
execute if score #hit fd.i_laser matches 0 if score #distance fd.i_laser matches ..200 positioned ^ ^ ^0.1 run function fluid_dimensions:i/laser/ray

# From: i/laser/ray

execute if score #hit fd.i_laser matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function fluid_dimensions:i/laser/hit_entity
execute if score #hit fd.i_laser matches 0 positioned ~-0.9 ~-0.9 ~-0.9 unless entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run scoreboard players remove @e[type=vex,tag=fd.i_laser,scores={fd.i_laser=1..}] fd.i_laser_long 1

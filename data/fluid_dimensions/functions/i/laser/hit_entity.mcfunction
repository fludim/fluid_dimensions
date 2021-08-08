# From: i/laser/check_hit_entity

scoreboard players set #hit fd.i_laser 1
scoreboard players add @e[type=vex,tag=fd.i_laser] fd.i_laser_long 1
execute if score @e[type=vex,tag=fd.i_laser,limit=1] fd.i_laser_long matches 80.. at @s run function fluid_dimensions:i/laser/long_hit

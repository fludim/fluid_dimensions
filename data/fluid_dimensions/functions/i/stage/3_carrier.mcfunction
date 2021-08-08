# From: i/stage/3

# Speed
function fluid_dimensions:i/stage/speed

# Laser
scoreboard players add @s fd.i_laser_long 0
scoreboard players add @s fd.i_laser_wait 0

execute if entity @a[distance=..20] if score @s fd.i_laser_wait matches 0 run function fluid_dimensions:i/laser/start_ray
execute unless entity @a[distance=..21] run scoreboard players set @s fd.i_laser_long 0
execute if score @s fd.i_laser_wait matches 1.. run scoreboard players remove @s fd.i_laser_wait 1

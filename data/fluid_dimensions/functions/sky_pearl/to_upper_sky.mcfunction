#as the player
#going there
execute at @s in fluid_dimensions:upper_sky run tp @s ~ 255 ~
execute at @s run spreadplayers ~ ~ 0 50 false @s
tag @s remove fd.sky_pearl_in_transit

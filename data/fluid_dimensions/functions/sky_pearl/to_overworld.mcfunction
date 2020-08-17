#as the player
#going back
execute at @s in minecraft:overworld run tp @s ~ 255 ~
execute at @s run spreadplayers ~ ~ 0 50 false @s
tag @s remove fd.sky_pearl_in_transit
execute as @s[advancements={fluid_dimensions:back_to_earth=false}] run advancement grant @s only fluid_dimensions:back_to_earth

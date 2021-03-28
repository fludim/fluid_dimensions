# From: advancement fallen_apple
# Note: advancement 'the_abyss' is already obtained when arriving in any way

execute at @s in fluid_dimensions:underridge run tp @s ~ 300 ~
execute at @s run spreadplayers ~ ~ 0 50 false @s

advancement revoke @s only fluid_dimensions:fallen_apple
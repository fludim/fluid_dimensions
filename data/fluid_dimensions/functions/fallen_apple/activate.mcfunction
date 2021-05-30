# From: advancement fallen_apple
# Note: advancement 'the_abyss' is already obtained when arriving in any way

execute in fluid_dimensions:underridge run tp @s ~ 300 ~
execute run spreadplayers ~ ~ 0 50 false @s

execute at @s run particle minecraft:dust_color_transition 2.7182818 -0 -0. 3 .0 0. -.0 ~ ~3 ~ 0.4 2 0.4 0 1400 force

advancement revoke @s only fluid_dimensions:fallen_apple
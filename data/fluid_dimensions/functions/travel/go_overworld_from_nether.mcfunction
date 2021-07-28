# From: travel/tick

execute in minecraft:overworld run tp @s ~ ~-570 ~
tag @s add fd.in_transit
advancement grant @s only fluid_dimensions:another_way

# From: travel/tick

execute in fluid_dimensions:underridge run tp @s ~ ~575 ~
tag @s add fd.in_transit
advancement grant @s only fluid_dimensions:another_way

##execute in fluid_dimensions:underridge run tp @s ~ 319 ~
execute in fluid_dimensions:underridge run tp @s ~ ~511 ~
tag @s add fd.blindness
execute as @s[advancements={fluid_dimensions:another_way=false}] run advancement grant @s only fluid_dimensions:another_way

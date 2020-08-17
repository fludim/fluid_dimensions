##execute in minecraft:overworld run tp @s ~ 383 ~
execute in minecraft:overworld run tp @s ~ ~443 ~
# (no blindness)
execute as @s[advancements={fluid_dimensions:another_way=false}] run advancement grant @s only fluid_dimensions:another_way

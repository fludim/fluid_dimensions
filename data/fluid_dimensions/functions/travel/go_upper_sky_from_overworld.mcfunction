##execute in fluid_dimensions:upper_sky run tp @s ~ -59 ~
execute in fluid_dimensions:upper_sky run tp @s ~ ~-443 ~
# (no blindness)
execute as @s[advancements={fluid_dimensions:another_way=false}] run advancement grant @s only fluid_dimensions:another_way

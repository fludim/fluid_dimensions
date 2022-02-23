# From: custom_tiles/y_set

# Now, from the blackstone ores, spawn ore based on type and chance

execute if entity @s[tag=fd.ore_nullite_spawn] if predicate fluid_dimensions:random/0_point_15 run function fluid_dimensions:custom_tiles/nullite_ore/spawn
execute if entity @s[tag=fd.ore_garnet_spawn] if predicate fluid_dimensions:random/0_point_25 run function fluid_dimensions:custom_tiles/garnet_ore/spawn
execute if entity @s[tag=fd.ore_garnet_spawn_always] run function fluid_dimensions:custom_tiles/garnet_ore/spawn

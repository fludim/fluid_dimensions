# From: custom_tiles/tick

execute if entity @s[tag=fd.ore_needs_y_spread] run function fluid_dimensions:custom_tiles/y_spread

# Check for blackstone as y pos has been randomised
execute if entity @s[tag=fd.ore_nullite_spawn] if predicate fluid_dimensions:random/0_point_15 at @s if block ~ ~ ~ minecraft:blackstone run function fluid_dimensions:custom_tiles/nullite_ore/spawn
execute if entity @s[tag=fd.ore_garnet_spawn] if predicate fluid_dimensions:random/0_point_25 at @s if block ~ ~ ~ minecraft:blackstone run function fluid_dimensions:custom_tiles/garnet_ore/spawn
execute if entity @s[tag=fd.ore_garnet_spawn_always] at @s if block ~ ~ ~ minecraft:blackstone run function fluid_dimensions:custom_tiles/garnet_ore/spawn
execute if entity @s[tag=fd.ore_warp_block_spawn] run function fluid_dimensions:custom_tiles/determine_wd_dest

kill @s[type=!player]

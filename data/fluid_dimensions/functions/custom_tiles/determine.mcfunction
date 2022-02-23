# From: custom_tiles/pretick

# Ores that need y-randomising are also those that need a solid block
execute if entity @s[tag=fd.ore_needs_y_spread] run function fluid_dimensions:custom_tiles/y_spread

# Other custom block spawns
execute if entity @s[tag=fd.ore_warp_block_spawn] run function fluid_dimensions:custom_tiles/determine_wd_dest

kill @s[type=!player]

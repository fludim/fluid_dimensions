# From: advancement place_custom_tile

# Nullite
execute as @e[type=minecraft:glow_item_frame,tag=fd.nullite_ore,tag=!fd.ore_placed] at @s unless block ~ ~ ~ #fluid_dimensions:replaceable run loot spawn ~ ~ ~ loot fluid_dimensions:blocks/nullite_ore_unobtainable
execute as @e[type=minecraft:glow_item_frame,tag=fd.nullite_ore,tag=!fd.ore_placed] at @s if block ~ ~ ~ #fluid_dimensions:replaceable run function fluid_dimensions:custom_tiles/nullite_ore/set

# Garnet
execute as @e[type=minecraft:glow_item_frame,tag=fd.garnet_ore,tag=!fd.ore_placed] at @s unless block ~ ~ ~ #fluid_dimensions:replaceable run loot spawn ~ ~ ~ loot fluid_dimensions:blocks/garnet_ore_silk_touch
execute as @e[type=minecraft:glow_item_frame,tag=fd.garnet_ore,tag=!fd.ore_placed] at @s if block ~ ~ ~ #fluid_dimensions:replaceable run function fluid_dimensions:custom_tiles/garnet_ore/set

# Fail blocks not replacing air
execute as @e[type=minecraft:glow_item_frame,tag=fd.ore,tag=!fd.ore_placed] at @s unless block ~ ~ ~ #fluid_dimensions:replaceable run kill @s

# Reset advancement
advancement revoke @a only fluid_dimensions:place_custom_tile
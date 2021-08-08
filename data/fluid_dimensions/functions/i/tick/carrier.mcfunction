# From: tick, i_carrier

# Face player
execute if entity @a[distance=..20] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Limit height due to y motion
execute anchored eyes positioned ^ ^ ^ if block ~ ~-1 ~ #fluid_dimensions:no_suffocation run function fluid_dimensions:i/restrict_height

# Kill if no passenger I
execute if entity @s[nbt=!{Passengers:[{}]}] run function fluid_dimensions:i/death

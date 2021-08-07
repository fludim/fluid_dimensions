# From: tick, i_carrier

# Limit height due to y motion
execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #fluid_dimensions:no_suffocation run function fluid_dimensions:i/restrict_height

# Kill if no passenger I
execute if entity @s[nbt=!{Passengers:[{}]}] run function fluid_dimensions:i/death

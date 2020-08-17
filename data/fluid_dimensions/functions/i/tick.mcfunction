# From: tick (if fd.i)

#runs ticking functions for each involved entity type

execute as @e[tag=fd.i] run function fluid_dimensions:i/tick/i
execute as @e[tag=fd.i_carrier] run function fluid_dimensions:i/tick/carrier

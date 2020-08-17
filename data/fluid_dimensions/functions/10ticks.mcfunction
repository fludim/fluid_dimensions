#From: tick
# every 10 ticks

#Custom Mobs
execute as @e[predicate=fluid_dimensions:dim/in_underridge, type=#fluid_dimensions:underridge_modify, tag=!fd.ur_mob] run function fluid_dimensions:underridge_mobs/replace
execute as @e[predicate=fluid_dimensions:dim/in_upper_sky, type=#fluid_dimensions:upper_sky_modify, tag=!fd.us_mob] run function fluid_dimensions:upper_sky_mobs/replace

execute as @e[tag=fd.cochineal] run function fluid_dimensions:underridge_mobs/cochineal

schedule function fluid_dimensions:10ticks 10t

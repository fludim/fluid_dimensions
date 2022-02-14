# From: load
# every 10 ticks

# Custom Mobs
execute as @e[limit=32,type=#fluid_dimensions:underridge_modify,tag=!smithed.entity,tag=!fd.ur_mob,predicate=fluid_dimensions:dim/in_underridge] run function fluid_dimensions:underridge_mobs/replace
execute as @e[limit=32,type=#fluid_dimensions:upper_sky_modify,tag=!smithed.entity,tag=!fd.us_mob,predicate=fluid_dimensions:dim/in_upper_sky] run function fluid_dimensions:upper_sky_mobs/replace

execute as @e[limit=32,type=minecraft:zombie,tag=fd.cochineal] run function fluid_dimensions:underridge_mobs/cochineal_rotation
execute as @e[type=minecraft:wither_skeleton,tag=fd.psirot] at @s run particle minecraft:dust_color_transition 0.14 0.02 0.14 2 0 0 0 ~ ~1.4 ~ 0.14 0.42 0.14 0.3 20

# Pod
execute as @e[type=villager,tag=fd.pod] at @s run function fluid_dimensions:pod/tick

# Echoes
execute as @e[type=stray,tag=fd.echo] at @s run function fluid_dimensions:echo/tick

# Recurse
schedule function fluid_dimensions:10ticks 10t

# From: tick
# every 10 ticks

# Custom Mobs
execute as @e[limit=32,type=#fluid_dimensions:underridge_modify,tag=!fd.ur_mob,predicate=fluid_dimensions:dim/in_underridge] run function fluid_dimensions:underridge_mobs/replace
execute as @e[limit=32,type=#fluid_dimensions:upper_sky_modify,tag=!fd.us_mob,predicate=fluid_dimensions:dim/in_upper_sky] run function fluid_dimensions:upper_sky_mobs/replace

execute as @e[limit=16,type=minecraft:zombie,tag=fd.cochineal] run function fluid_dimensions:underridge_mobs/cochineal
execute as @e[limit=16,type=minecraft:skeleton,tag=fd.haunted] run function fluid_dimensions:underridge_mobs/haunted
execute as @e[limit=16,type=minecraft:wither_skeleton,tag=fd.psirot] run function fluid_dimensions:underridge_mobs/psirot

# Pod
execute as @e[type=villager,tag=fd.pod] at @s run function fluid_dimensions:pod/tick

# Recurse
schedule function fluid_dimensions:10ticks 10t

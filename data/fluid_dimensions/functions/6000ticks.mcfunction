# From: load
# every 6000 ticks

# Custom Mob Effects
execute as @e[type=minecraft:zombie,tag=fd.cochineal] run function fluid_dimensions:underridge_mobs/cochineal
execute as @e[type=minecraft:skeleton,tag=fd.haunted] run function fluid_dimensions:underridge_mobs/haunted
execute as @e[type=minecraft:wither_skeleton,tag=fd.psirot] run function fluid_dimensions:underridge_mobs/psirot
execute as @e[type=minecraft:stray,tag=fd.echo] run function fluid_dimensions:underridge_mobs/echo

# Pod
execute as @e[type=villager,tag=fd.pod] run function fluid_dimensions:pod/effects

# Recurse
schedule function fluid_dimensions:6000ticks 6000t

# From: tick

# ID system
execute as @s[tag=!fd.i_id_tagged] run function fluid_dimensions:i/id_assign
execute as @s[tag=fd.i_id_tagged,scores={fd.i_id=2..}] run function fluid_dimensions:i/id_shuffle

# particles
## normal
particle minecraft:squid_ink ~ ~1.1 ~ 0.6 0.6 0.6 0.05 8

###more particles for stages 2 and finally 3?

# TP detached I into the void (touched water, etc)
execute as @s[predicate=!fluid_dimensions:not_a_passenger] at @s run particle minecraft:falling_dust quartz_block ~ ~ ~ 0.8 0.8 0.8 0.04 600
execute in fluid_dimensions:underridge run tp @s[predicate=!fluid_dimensions:not_a_passenger] 0 -9999 0

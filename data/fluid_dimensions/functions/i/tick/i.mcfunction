# From: tick

# ID system
execute as @s[tag=!fd.i_id_tagged] run function fluid_dimensions:i/id_assign
execute as @s[tag=fd.i_id_tagged,scores={fd.i_id=2..}] run function fluid_dimensions:i/id_shuffle

# Suffocation prot
execute anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~-0.99875 ~ ~-0.99875 #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~ ~ ~-0.99875 #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~0.99875 ~ ~-0.99875 #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~-0.99875 ~ ~ #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~0.99875 ~ ~ #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~-0.99875 ~ ~0.99875 #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~ ~ ~0.99875 #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
execute as @s[tag=!fd.i_suffocating] anchored eyes positioned ^ ^ ^ unless block ~0.99875 ~ ~0.99875 #fluid_dimensions:no_suffocation run tag @s add fd.i_suffocating
effect give @s[tag=fd.i_suffocating] resistance 1 4
tag @s remove fd.i_suffocating

# particles
## stage 1
particle minecraft:squid_ink ~ ~0.99875 ~ 0.6 0.6 0.6 0.05 8

## stage 2
execute if score @s fd.i_stage matches 2..3 run particle minecraft:lava ~ ~0.99875 ~ 0.4 0.5 0.4 0.12 3

## stage 3 only
execute if score @s fd.i_stage matches 3 run particle minecraft:dust_color_transition 0.9 0.1 0 3 0.3 0.1 0 ~ ~0.99875 ~ 0.5 0.5 0.5 0.2 8

# TP detached I into the void (touched water, etc)
execute as @s[predicate=!fluid_dimensions:not_a_passenger] at @s run particle minecraft:falling_dust quartz_block ~ ~ ~ 0.8 0.8 0.8 0.04 600
execute in fluid_dimensions:underridge run tp @s[predicate=!fluid_dimensions:not_a_passenger] 0 -9999 0

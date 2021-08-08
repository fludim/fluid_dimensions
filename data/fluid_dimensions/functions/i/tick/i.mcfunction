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

# Hurt
execute store result score @s fd.hurt run data get entity @s HurtTime
execute if score @s fd.hurt matches 10.. run summon minecraft:snowball ~ ~-1 ~ {NoGravity:0b,Tags:["global.ignore", "global.ignore.pos"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"minecraft:dust_color_transition 0.3 0.05 0 2 0.1 0.1 0.1",NoGravity:0b,CustomNameVisible:0b,ReapplicationDelay:10,Radius:1f,RadiusPerTick:0.005f,RadiusOnUse:-0.1f,Duration:200,Tags:["fd.i_miasma"],Effects:[{Id:15b,Amplifier:0b,Duration:100},{Id:20b,Amplifier:1b,Duration:120}],CustomName:'{"translate":"entity.fd.i","color":"dark_red","bold":true,"italic":false}'}],Item:{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:4470099}}}

# Stages
## all stages
function fluid_dimensions:i/stage/all

## stage 2 only
execute if score @s fd.i_stage matches 2 run function fluid_dimensions:i/stage/2

## stage 3 only
execute if score @s fd.i_stage matches 3 run function fluid_dimensions:i/stage/3

# TP detached I into the void (touched water, etc)
execute as @s[predicate=!fluid_dimensions:not_a_passenger] at @s run particle minecraft:falling_dust quartz_block ~ ~ ~ 0.8 0.8 0.8 0.04 600
execute in fluid_dimensions:underridge run tp @s[predicate=!fluid_dimensions:not_a_passenger] 0 -9999 0

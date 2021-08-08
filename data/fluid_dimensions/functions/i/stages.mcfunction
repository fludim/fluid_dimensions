# From: 10ticks (as fd.i)

# Remove visual fire and wither effect
data modify entity @s Fire set value 0s
effect clear @s wither

# Put health into a score
execute store result score @s fd.health run data get entity @s Health 100

# Test for each 'third' accurate to ~0.01 points
execute if score @s fd.health matches 33334..50000 run scoreboard players set @s fd.i_stage 1
execute if score @s fd.health matches 16667..33333 run scoreboard players set @s fd.i_stage 2
execute if score @s fd.health matches 00000..16666 run scoreboard players set @s fd.i_stage 3

# Check if last stage different
execute unless score @s fd.i_stage = @s fd.i_stage_last run function fluid_dimensions:i/modify_attributes

# Store stage to last stage
scoreboard players operation @s fd.i_stage_last = @s fd.i_stage

# From: 10ticks

# Effects
effect give @s invisibility 1000000 0 true
effect give @s fire_resistance 1000000 0 true

# Get Age / 100 (1 = 5 seconds)
execute store result score @s fd.pod_age run data get entity @s Age 0.01

# Save initial stage
execute if score @s fd.pod_age matches -400..-241 run scoreboard players set @s fd.pod_stage 0

scoreboard players operation #old_stage fd.pod_stage = @s fd.pod_stage

# Stages
execute if score @s fd.pod_age matches -240..-141 if score @s fd.pod_stage matches 0 run scoreboard players set @s fd.pod_stage 1
execute if score @s fd.pod_age matches -140..-1 if score @s fd.pod_stage matches 1 run scoreboard players set @s fd.pod_stage 2
execute if score @s fd.pod_age matches 0 if score @s fd.pod_stage matches 2 run scoreboard players set @s fd.pod_stage 3

execute if score @s fd.pod_ripeness matches 1501.. if score @s fd.pod_stage matches 3 run scoreboard players set @s fd.pod_stage 4

# Models (update on stage change)
execute unless score #old_stage fd.pod_stage = @s fd.pod_stage run function fluid_dimensions:pod/model_resolve

# Ripening (Age stops at 0)
execute if score @s fd.pod_stage matches 3 run scoreboard players add @s fd.pod_ripeness 1

# Make ready to soup
execute if score @s fd.pod_stage matches 4 run tag @s add fd.pod_ready

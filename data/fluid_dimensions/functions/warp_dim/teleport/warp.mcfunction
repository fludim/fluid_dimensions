# From: warp_dim/destination_check

execute in fluid_dimensions:warp positioned 0.0 64.0 0.0 run tp @s ~ ~ ~
execute store result score @s fd.temp run data get entity @s playerGameType
execute if score @s fd.temp matches 0 run tag @s add fd.wd_was_survival_mode
execute if score @s fd.temp matches 0 run gamemode adventure @s
tag @s add fd.in_warp_dimension
function fluid_dimensions:warp_dim/gated_10t
execute in fluid_dimensions:warp run function fluid_dimensions:warp_dim/room/generate_check

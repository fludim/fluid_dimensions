# From: warp_dim/teleport_check_1t

execute if score @s fd.wd_dest matches 0 run function fluid_dimensions:warp_dim/teleport/underridge
execute if score @s fd.wd_dest matches 1 run function fluid_dimensions:warp_dim/teleport/nether
execute if score @s fd.wd_dest matches 2 run function fluid_dimensions:warp_dim/teleport/overworld
execute if score @s fd.wd_dest matches 3 run function fluid_dimensions:warp_dim/teleport/upper_sky
execute if score @s fd.wd_dest matches 4 run function fluid_dimensions:warp_dim/teleport/end
execute if score @s fd.wd_dest matches 5 run function fluid_dimensions:warp_dim/teleport/warp

tag @s remove fd.wd_teleport
scoreboard players reset @s fd.wd_dest

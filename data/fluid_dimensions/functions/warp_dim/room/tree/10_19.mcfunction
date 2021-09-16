# From: warp_dim/room/random_structure
# rock_id 10 to 19

execute if score @s fd.wd_rock_id matches 15.. run function fluid_dimensions:warp_dim/room/tree/15_19
execute if score @s fd.wd_rock_id matches ..14 run function fluid_dimensions:warp_dim/room/tree/10_14

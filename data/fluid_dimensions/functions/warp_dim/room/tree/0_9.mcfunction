# From: warp_dim/room/random_structure
# rock_id 0 to 9

execute if score @s fd.wd_rock_id matches 5.. run function fluid_dimensions:warp_dim/room/tree/5_9
execute if score @s fd.wd_rock_id matches ..4 run function fluid_dimensions:warp_dim/room/tree/0_4

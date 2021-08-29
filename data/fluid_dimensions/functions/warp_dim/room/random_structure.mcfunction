# From: warp_dim/room/generate_1t
# Uses the LCG to generate a random rock structure

scoreboard players set #Modulus fd.lcg_main 20
function fluid_dimensions:lcg/random
scoreboard players operation @s fd.warp_rock_id = #Out fd.lcg_main

# Binary tree
execute if score @s fd.warp_rock_id matches 10.. run function fluid_dimensions:warp_dim/room/tree/10_19
execute if score @s fd.warp_rock_id matches ..9 run function fluid_dimensions:warp_dim/room/tree/0_9

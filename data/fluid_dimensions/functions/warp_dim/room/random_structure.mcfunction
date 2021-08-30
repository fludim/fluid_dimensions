# From: warp_dim/room/generate_1t
# Uses the LCG to generate a random rock structure

scoreboard players set #Modulus fd.lcg_main 20
function fluid_dimensions:lcg/random
scoreboard players operation @s fd.warp_rock_id = #Out fd.lcg_main

# Binary tree for Rocks
execute if score @s fd.warp_rock_id matches 10.. run function fluid_dimensions:warp_dim/room/tree/10_19
execute if score @s fd.warp_rock_id matches ..9 run function fluid_dimensions:warp_dim/room/tree/0_9

# Big Rocks with Portals
# S/W/N/E/D -> N/US/E/O/UR
setblock 0 61 44 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_s",posX:-4,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock -44 61 0 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_w",posX:-6,posY:0,posZ:-4,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock 0 61 -44 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_n",posX:-4,posY:0,posZ:-6,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock 43 61 0 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_e",posX:-1,posY:0,posZ:-4,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
###comingsoon udnerridge

setblock 1 61 44 minecraft:redstone_block
setblock -43 61 0 minecraft:redstone_block
setblock 1 61 -44 minecraft:redstone_block
setblock 44 61 0 minecraft:redstone_block
###

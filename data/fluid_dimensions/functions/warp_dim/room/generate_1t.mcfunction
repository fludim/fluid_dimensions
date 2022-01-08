# From: warp_dim/room/generate
# Generates the Rocks

# Position Markers
spreadplayers 0.0 0.0 1 10.0 false @e[type=marker,tag=fd.warp_dim_rock,x=0]
execute as @e[type=marker,tag=fd.warp_dim_rock,x=0] at @s run function fluid_dimensions:warp_dim/room/marker_spread

# Spawn Rocks
execute as @e[type=marker,tag=fd.warp_dim_rock,x=0] at @s run function fluid_dimensions:warp_dim/room/random_structure

# Spawn Portal Rocks
# S/W/N/E/D -> N/US/E/O/UR
# Fun fact: this used to generate as each marker

setblock 0 61 44 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_s",posX:-4,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock -44 61 0 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_w",posX:-6,posY:0,posZ:-4,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock 0 61 -44 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_n",posX:-4,posY:0,posZ:-6,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock 43 61 0 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_e",posX:-1,posY:0,posZ:-4,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}
setblock -1 30 -1 minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_p_d",posX:-3,posY:0,posZ:-3,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:8,sizeY:4,sizeZ:8}

setblock 1 61 44 minecraft:redstone_block
setblock -43 61 0 minecraft:redstone_block
setblock 1 61 -44 minecraft:redstone_block
setblock 44 61 0 minecraft:redstone_block
setblock -1 31 -1 minecraft:redstone_block

# Tell the Warp Block sound system that there are Warp Blocks, in case all older ones were unloaded/deleted
scoreboard players set $Warp_Block_Exists fd.temp 1

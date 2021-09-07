# From: warp_dim/room/tree/10_19
# rock_id 10 to 14

execute if score @s fd.warp_rock_id matches 10 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_11",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 11 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_12",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 12 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_13",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 13 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_14",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 14 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_15",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}

setblock ~1 ~ ~ minecraft:redstone_block

kill @s

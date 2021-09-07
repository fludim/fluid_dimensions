# From: warp_dim/room/tree/10_19
# rock_id 15 to 19

execute if score @s fd.warp_rock_id matches 15 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_16",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 16 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_17",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 17 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_18",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 18 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_19",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.warp_rock_id matches 19 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_20",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}

setblock ~1 ~ ~ minecraft:redstone_block

kill @s

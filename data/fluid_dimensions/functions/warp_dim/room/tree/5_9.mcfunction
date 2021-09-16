# From: warp_dim/room/tree/0_9
# rock_id 5 to 9

execute if score @s fd.wd_rock_id matches 5 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_6",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 6 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_7",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 7 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_8",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 8 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_9",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 9 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_10",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}

setblock ~1 ~ ~ minecraft:redstone_block

kill @s

# From: warp_dim/room/tree/0_9
# rock_id 0 to 4

execute if score @s fd.wd_rock_id matches 0 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_1",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 1 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_2",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 2 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_3",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 3 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_4",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}
execute if score @s fd.wd_rock_id matches 4 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"DylzMC",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"fluid_dimensions:rocks/rock_5",posX:-1,posY:0,posZ:-1,powered:0b,rotation:"NONE",seed:0L,showair:1b,showboundingbox:1b,sizeX:3,sizeY:1,sizeZ:3}

setblock ~1 ~ ~ minecraft:redstone_block

kill @s

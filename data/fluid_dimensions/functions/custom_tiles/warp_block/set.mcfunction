# From: custom_tiles/place

setblock ~ ~ ~ minecraft:end_gateway{Age:-2147483648,ExactTeleport:1,ExitPortal:{X:0,Y:200,Z:0}}
data modify block ~ ~ ~ ExitPortal.X set from block ~ ~ ~ x
data modify block ~ ~ ~ ExitPortal.Y set from block ~ ~ ~ y
data modify block ~ ~ ~ ExitPortal.Z set from block ~ ~ ~ z
tag @s add fd.ore_placed

execute if score $Warp_Block_New fd.temp matches 0 run function fluid_dimensions:custom_tiles/warp_block/white_noise_20t

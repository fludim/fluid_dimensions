# From: custom_tiles/place

setblock ~ ~ ~ minecraft:end_gateway{Age:-2147483648,ExactTeleport:1,ExitPortal:{X:0,Y:200,Z:0}}
data modify block ~ ~ ~ ExitPortal.X set from block ~ ~ ~ x
data modify block ~ ~ ~ ExitPortal.Y set from block ~ ~ ~ y
data modify block ~ ~ ~ ExitPortal.Z set from block ~ ~ ~ z
tag @s add fd.ore_placed

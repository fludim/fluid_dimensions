# From: i/stage/3_carrier

tag @s add fd.i_laser
scoreboard players set #hit fd.i_laser 0
scoreboard players set #distance fd.i_laser 0

execute anchored eyes positioned ~ ~2.8 ~ positioned ^ ^-1.2 ^ facing entity @p eyes run function fluid_dimensions:i/laser/ray

tag @s remove fd.i_laser

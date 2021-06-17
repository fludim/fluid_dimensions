# From: custom_tiles/tick

execute unless block ~ ~ ~ minecraft:iron_block run function fluid_dimensions:custom_tiles/nulliron_block/break

execute store success score #if_air fd.temp if block ~ ~ ~ air
execute store success score #unless_air fd.temp unless block ~ ~ ~ air
execute if score #if_air fd.temp = #unless_air fd.temp run function fluid_dimensions:custom_tiles/nulliron_block/break
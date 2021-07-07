# From: custom_tiles/tick

execute unless block ~ ~ ~ minecraft:barrel[facing=up] run function fluid_dimensions:ocular_forge/table/destroy

execute store success score #if_air fd.temp if block ~ ~ ~ air
execute store success score #unless_air fd.temp unless block ~ ~ ~ air
execute if score #if_air fd.temp = #unless_air fd.temp run function fluid_dimensions:ocular_forge/table/destroy

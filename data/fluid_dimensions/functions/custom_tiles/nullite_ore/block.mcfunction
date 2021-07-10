# From: custom_tiles/tick

execute unless block ~ ~ ~ minecraft:blackstone run function fluid_dimensions:custom_tiles/nullite_ore/break
execute store success score #if_air fd.temp if block ~ ~ ~ air
execute store success score #unless_air fd.temp unless block ~ ~ ~ air
execute if score #if_air fd.temp = #unless_air fd.temp run function fluid_dimensions:custom_tiles/nullite_ore/break

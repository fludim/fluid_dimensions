#detect change
execute store success score Success fd.o_forge run data modify entity @s Item.tag.Items set from block ~ ~ ~ Items
execute if score Success fd.o_forge matches 1 run function fluid_dimensions:ocular_forge/table/change/main
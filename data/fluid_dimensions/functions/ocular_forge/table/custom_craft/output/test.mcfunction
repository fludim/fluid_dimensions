# From: ocular_forge/table/change/display

data modify storage fluid_dimensions:craft Display set from entity @s Item.tag.Display

execute store result score $count_change2 fd.o_forge run data get storage fluid_dimensions:craft Display.Count
execute store result score $count_change fd.o_forge run data get storage fluid_dimensions:craft Items[{Slot:15b}].Count

data modify storage fluid_dimensions:craft Display.Count set from storage fluid_dimensions:craft Items[{Slot:15b}].Count

execute store success score Item_Change fd.o_forge run data modify storage fluid_dimensions:craft Display set from storage fluid_dimensions:craft Items[{Slot:15b}]

execute if score Item_Change fd.o_forge matches 1 run function fluid_dimensions:ocular_forge/table/custom_craft/output/replace_output

execute if score Item_Change fd.o_forge matches 0 if score $count_change fd.o_forge < $count_change2 fd.o_forge run function fluid_dimensions:ocular_forge/table/custom_craft/output/replace_output
execute if score Item_Change fd.o_forge matches 0 if score $count_change fd.o_forge > $count_change2 fd.o_forge run function fluid_dimensions:ocular_forge/table/custom_craft/output/count_change

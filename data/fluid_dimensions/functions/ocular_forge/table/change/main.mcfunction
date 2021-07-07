# From: ocular_forge/main

data modify storage fluid_dimensions:craft Items set from entity @s Item.tag.Items

data modify storage fluid_dimensions:craft Test set from storage fluid_dimensions:craft Items

data remove storage fluid_dimensions:craft Test[{Slot:1b}]
data remove storage fluid_dimensions:craft Test[{Slot:2b}]
data remove storage fluid_dimensions:craft Test[{Slot:3b}]

data remove storage fluid_dimensions:craft Test[{Slot:10b}]
data remove storage fluid_dimensions:craft Test[{Slot:11b}]
data remove storage fluid_dimensions:craft Test[{Slot:12b}]

data remove storage fluid_dimensions:craft Test[{Slot:19b}]
data remove storage fluid_dimensions:craft Test[{Slot:20b}]
data remove storage fluid_dimensions:craft Test[{Slot:21b}]

execute if entity @s[tag=fd.of.display_craft] run data remove storage fluid_dimensions:craft Test[{Slot:15b}]

execute unless data storage fluid_dimensions:craft Test[0] run function fluid_dimensions:ocular_forge/table/change/display
execute if data storage fluid_dimensions:craft Test[0] run function fluid_dimensions:ocular_forge/table/change/replace/replace

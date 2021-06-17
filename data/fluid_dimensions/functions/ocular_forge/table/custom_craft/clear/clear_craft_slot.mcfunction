execute store result storage fluid_dimensions:craft Items[{Slot:1b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:1b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:2b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:2b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:3b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:3b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:10b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:10b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:11b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:11b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:12b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:12b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:19b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:19b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:20b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:20b}].Count 
execute store result storage fluid_dimensions:craft Items[{Slot:21b}].Count byte 0.99 run data get storage fluid_dimensions:craft Items[{Slot:21b}].Count

data remove storage fluid_dimensions:craft Items[{Count:0b}]

tag @s remove fd.of.display_craft

say CLEAR_CRAFT_SLOT
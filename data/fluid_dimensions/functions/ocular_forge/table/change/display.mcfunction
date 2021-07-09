# From: ocular_forge/table/change/main

execute unless entity @s[tag=fd.of.display_craft] if data storage fluid_dimensions:craft Items[{Slot:15b}] run function fluid_dimensions:ocular_forge/table/custom_craft/output/replace_output

execute store result score Count fd.o_forge if data storage fluid_dimensions:craft Items[]

execute if entity @s[tag=fd.of.display_craft] unless data storage fluid_dimensions:craft Items[{Slot:15b}] run function fluid_dimensions:ocular_forge/table/custom_craft/clear/clear_craft_slot
execute if entity @s[tag=fd.of.display_craft] if data storage fluid_dimensions:craft Items[{Slot:15b}] run function fluid_dimensions:ocular_forge/table/custom_craft/output/test

execute if data storage fluid_dimensions:craft Items[{Slot:15b}] run scoreboard players remove Count fd.o_forge 1
execute store result score GUI fd.o_forge if data storage fluid_dimensions:craft Items[{tag:{fd:{tags:{"of_gui_item":1b}}}}]

scoreboard players operation Count fd.o_forge -= GUI fd.o_forge

tag @s remove fd.of.display_craft

data remove storage fluid_dimensions:craft Items[{Slot:15b}]

execute if score Count fd.o_forge matches 1 run function #fluid_dimensions:craft/1
execute if score Count fd.o_forge matches 2 run function #fluid_dimensions:craft/2
execute if score Count fd.o_forge matches 3 run function #fluid_dimensions:craft/3
execute if score Count fd.o_forge matches 4 run function #fluid_dimensions:craft/4
execute if score Count fd.o_forge matches 5 run function #fluid_dimensions:craft/5
execute if score Count fd.o_forge matches 6 run function #fluid_dimensions:craft/6
execute if score Count fd.o_forge matches 7 run function #fluid_dimensions:craft/7
execute if score Count fd.o_forge matches 8 run function #fluid_dimensions:craft/8
execute if score Count fd.o_forge matches 9 run function #fluid_dimensions:craft/9

data modify entity @s Item.tag.Display set from storage fluid_dimensions:craft Items[{Slot:15b}]

data modify block ~ ~ ~ Items set from storage fluid_dimensions:craft Items
data modify entity @s Item.tag.Items set from block ~ ~ ~ Items

summon item ~ ~1 ~ {Item:{id:"minecraft:paper",Count:1b},Tags:["fd.of.summon"]}

data modify entity @e[type=item,limit=1,tag=fd.of.summon] Item set from storage fluid_dimensions:craft Items[{Slot:15b}]

data remove storage fluid_dimensions:craft Items[{Slot:15b}]
tag @e[type=item,tag=fd.of.summon] remove fd.of.summon
execute if entity @s[tag=fd.of.display_craft] run function fluid_dimensions:ocular_forge/table/custom_craft/clear/clear_craft_slot
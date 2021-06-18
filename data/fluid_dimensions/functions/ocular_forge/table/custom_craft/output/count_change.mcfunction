summon item ~ ~1 ~ {Item:{id:"minecraft:paper",Count:1b},Tags:["fd.of.summon"]}

scoreboard players operation Count_Change fd.o_forge -= Count_Change2 fd.o_forge
execute store result storage fluid_dimensions:craft Items[{Slot:15b}].Count byte 1 run scoreboard players get Count_Change fd.o_forge

data modify entity @e[type=item,limit=1,tag=fd.of.summon] Item set from storage fluid_dimensions:craft Items[{Slot:15b}]

data remove storage fluid_dimensions:craft Items[{Slot:15b}]
tag @e[type=item,tag=fd.of.summon] remove fd.of.summon

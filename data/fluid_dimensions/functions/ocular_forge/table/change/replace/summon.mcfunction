data remove storage fluid_dimensions:craft Summon
data modify storage fluid_dimensions:craft Summon set from block ~ ~ ~ Items

execute if data storage fluid_dimensions:craft Summon[{Slot:22b}] run summon item ~ ~1 ~ {Item:{id:"paper",Count:1b},Tags:["fd.of.summon1","fd.of.summon"]}
execute if data storage fluid_dimensions:craft Summon[{Slot:23b}] run summon item ~ ~1 ~ {Item:{id:"paper",Count:1b},Tags:["fd.of.summon2","fd.of.summon"]}
execute if data storage fluid_dimensions:craft Summon[{Slot:24b}] run summon item ~ ~1 ~ {Item:{id:"paper",Count:1b},Tags:["fd.of.summon3","fd.of.summon"]}
execute if data storage fluid_dimensions:craft Summon[{Slot:25b}] run summon item ~ ~1 ~ {Item:{id:"paper",Count:1b},Tags:["fd.of.summon4","fd.of.summon"]}
execute if data storage fluid_dimensions:craft Summon[{Slot:26b}] run summon item ~ ~1 ~ {Item:{id:"paper",Count:1b},Tags:["fd.of.summon5","fd.of.summon"]}

execute as @e[type=item,tag=fd.of.summon] run function fluid_dimensions:ocular_forge/table/change/replace/summon2
tag @e[type=item,tag=fd.of.summon] remove fd.of.summon

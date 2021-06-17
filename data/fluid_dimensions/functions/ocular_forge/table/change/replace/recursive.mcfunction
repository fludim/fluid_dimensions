scoreboard players set #timer fd.o_forge 0
data remove storage fluid_dimensions:craft Test2
data modify block ~ ~ ~ Items append from storage fluid_dimensions:craft FillSlot[]

function fluid_dimensions:ocular_forge/table/change/replace/set

data modify block 16942001 1 -14269007 Items set from storage fluid_dimensions:craft Test2
loot insert ~ ~ ~ mine 16942001 1 -14269007 air{drop_contents:1b}

execute if data block ~ ~ ~ Items[22] run function fluid_dimensions:ocular_forge/table/change/replace/summon

execute if data storage fluid_dimensions:craft Test[0] run function fluid_dimensions:ocular_forge/table/change/replace/recursive

say RECURSIVE
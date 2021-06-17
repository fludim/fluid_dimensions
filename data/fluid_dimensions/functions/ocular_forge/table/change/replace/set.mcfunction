data modify storage fluid_dimensions:craft Test2 append from storage fluid_dimensions:craft Test[0] 
data remove storage fluid_dimensions:craft Test[0]

scoreboard players add #timer fd.o_forge 1

execute unless score #timer fd.o_forge matches 5.. if data storage fluid_dimensions:craft Test[0] run function fluid_dimensions:ocular_forge/table/change/replace/set

say SET
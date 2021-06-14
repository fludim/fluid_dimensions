execute at @e[type=glow_item_frame,tag=fd.ocular_forge] run setblock ~ ~ ~ air
kill @e[type=glow_item_frame,tag=fd.ocular_forge]

scoreboard objectives remove fd.o_forge

forceload remove 16942000 -14269007 16942000 -14269007

data remove storage fluid_dimensions:craft Items
data remove storage fluid_dimensions:craft Test
data remove storage fluid_dimensions:craft Test2
data remove storage fluid_dimensions:craft ClearSlotUseless
data remove storage fluid_dimensions:craft FillAllSlot
data remove storage fluid_dimensions:craft FillSlot
data remove storage fluid_dimensions:craft fd_of_gui_item
data remove storage fluid_dimensions:craft Display
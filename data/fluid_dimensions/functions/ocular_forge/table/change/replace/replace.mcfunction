# From: ocular_forge/table/change/main

setblock 16942001 1 -14269007 yellow_shulker_box
execute unless entity @s[tag=fd.of.display_craft] run item replace block ~ ~ ~ container.15 with white_stained_glass_pane{CustomModelData:4701099,fd_of_fill:1,fd_of_gui_clear:1}
function fluid_dimensions:ocular_forge/table/change/replace/recursive

data remove block ~ ~ ~ Items[{tag:{fd_of_fill:1}}]
data modify block ~ ~ ~ Items append from storage fluid_dimensions:craft ClearSlotUseless[]

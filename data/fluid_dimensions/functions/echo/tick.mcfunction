# From: 10ticks

data modify storage fluid_dimensions:player mainhand set from entity @p[distance=..20] SelectedItem
data modify storage fluid_dimensions:player offhand set from entity @p[distance=..20] Inventory[{Slot:-106b}]
data remove storage fluid_dimensions:player offhand.Slot
execute store success score @s fd.change_hold run data modify storage fluid_dimensions:player mainhand set from entity @s HandItems[0]
execute if score @s fd.change_hold matches 0 store success score @s fd.change_hold run data modify storage fluid_dimensions:player offhand set from entity @s HandItems[1]
execute if score @s fd.change_hold matches 1 run function fluid_dimensions:echo/mimic

# from: player
# Handles all right-clicks, in one place.

## enchanted_door attempt > activate
execute if entity @s[nbt={SelectedItem:{tag:{fd_enchanted_door:1b}}}] at @s run function fluid_dimensions:enchanted_door/activate

## void_veil attempt > verify > equip
execute if entity @s[predicate=fluid_dimensions:void_veil/can_equip] at @s run function fluid_dimensions:void_veil/equip






### RESET ###
scoreboard players reset @s[scores={fd.r_click=1..}] fd.r_click

# From: player

# Handles all right-clicks, in one place.

## enchanted_door attempt > activate
execute if data entity @s SelectedItem.tag.fd{id:"enchanted_warped_door"} as @s at @s run function fluid_dimensions:enchanted_door/activate

## void_veil attempt > verify > equip
execute if entity @s[predicate=fluid_dimensions:void_veil/can_equip] at @s run function fluid_dimensions:void_veil/equip

# RESET
scoreboard players reset @s[scores={fd.r_click=1..}] fd.r_click

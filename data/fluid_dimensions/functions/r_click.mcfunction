# From: player

# Handles all right-clicks

## enchanted_door
execute if data entity @s SelectedItem.tag.fd{id:"enchanted_warped_door"} as @s at @s run function fluid_dimensions:enchanted_door/activate

## void_veil
execute if entity @s[predicate=fluid_dimensions:void_veil/can_equip] at @s run function fluid_dimensions:void_veil/equip

## nadir_tunneller
execute if score @s fd.tunneller_cd matches 0..390 if data entity @s SelectedItem.tag.fd{id:"nadir_tunneller"} at @s anchored feet run function fluid_dimensions:nadir_tunnel/determine

# RESET
scoreboard players reset @s[scores={fd.r_click=1..}] fd.r_click

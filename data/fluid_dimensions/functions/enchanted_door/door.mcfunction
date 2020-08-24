# From: player

# enchanted_warped_door use detection:
execute if entity @s[nbt={SelectedItem:{tag:{fd_enchanted_door:1b}}},scores={fd.r_click=1..}] at @s run function fluid_dimensions:enchanted_door/activate

execute if entity @s[scores={fd.warp_time=1..}] run scoreboard players remove @s fd.warp_time 1

execute if entity @s[scores={fd.warp_time=0}] as @s at @s run function fluid_dimensions:enchanted_door/return

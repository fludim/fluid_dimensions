#From: player

# r_click link

# enchanted_warped_door cooldown:

execute if entity @s[scores={fd.warp_time=1..}] run scoreboard players remove @s fd.warp_time 1

execute if entity @s[scores={fd.warp_time=0}] as @s at @s run function fluid_dimensions:enchanted_door/return

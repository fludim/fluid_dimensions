# From: door, if score fd.warp_time = 0 (after 10s)

function fluid_dimensions:enchanted_door/reset_gamemode
function fluid_dimensions:enchanted_door/reset_dim
function fluid_dimensions:enchanted_door/damage

execute unless entity @s[scores={fd.dimension=1}] at @s run spreadplayers ~ ~ 0 1 false @s
execute if entity @s[scores={fd.dimension=1}] at @s run spreadplayers ~ ~ 0 1 under 127 false @s
scoreboard players reset @s fd.dimension

effect give @s minecraft:jump_boost 5 255 true

scoreboard players set @s fd.warp_time -1

# From: return

execute if entity @s[scores={fd.gamemode=0}] run gamemode survival
execute if entity @s[scores={fd.gamemode=1}] run gamemode creative
execute if entity @s[scores={fd.gamemode=2}] run gamemode adventure
scoreboard players reset @s fd.gamemode

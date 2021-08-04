# From: tick

scoreboard players add @s fd.hand_dist 1

execute at @s[scores={fd.hand_dist=0..30}] run tp @s ~ ~ ~ facing entity @e[limit=1,type=#fluid_dimensions:psirot_attack,tag=!global.ignore,distance=..50,sort=nearest]
execute at @s[scores={fd.hand_dist=0..20}] run tp @s ~ ~ ~ facing entity @p[distance=..50,gamemode=survival]

execute positioned ^ ^ ^-0.5 run particle minecraft:dust_color_transition 0.14 0.02 0.14 1 0 0 0 ~ ~1 ~ 0.1 0.1 0.1 0.3 2

execute positioned ^ ^ ^0.5 unless block ~ ~1 ~ #fluid_dimensions:air positioned ~ ~1 ~ run function fluid_dimensions:psirot/hand_dmg
execute positioned ^ ^ ^0.5 positioned ~ ~1 ~ if entity @e[type=#fluid_dimensions:psirot_attack,tag=!global.ignore,distance=0..1] run function fluid_dimensions:psirot/hand_dmg
execute positioned ^ ^ ^0.5 positioned ~ ~0.5 ~ if entity @a[distance=0..1,gamemode=!spectator] run function fluid_dimensions:psirot/hand_dmg

kill @s[scores={fd.hand_dist=50..}]

execute positioned ^ ^ ^0.5 if block ~ ~1 ~ #fluid_dimensions:air run tp @s ^ ^ ^0.5

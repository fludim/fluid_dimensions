# From: warp_dim/room/generate_1t
# Spreads Markers in a ring

execute store result entity @s Pos[0] double 0.001 run data get entity @s Pos[0] 4191.86
execute store result entity @s Pos[2] double 0.001 run data get entity @s Pos[2] 4191.86
execute at @s run tp @s ~ 62.0 ~
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[x=-12,z=-12,dx=23,dz=23] run kill @s
execute positioned 0.0 62.0 0.0 if entity @s[distance=44..] run kill @s
execute at @s run kill @e[type=marker,tag=fd.warp_dim_rock,distance=1..5]

# From: warp_dim/room/generate_1t
# Spreads Markers in a ring
say SPREAD
execute store result entity @s Pos[0] double 0.001 run data get entity @s Pos[0] 4391.86
execute store result entity @s Pos[2] double 0.001 run data get entity @s Pos[2] 4391.86
execute at @s run tp @s ~ 62.0 ~
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[x=-13,z=-13,dx=25,dz=25] run kill @s
execute positioned 0.0 62.0 0.0 if entity @s[distance=44..] run kill @s

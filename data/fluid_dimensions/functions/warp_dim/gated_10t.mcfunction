# From: warp_dim/teleport/warp, warp_dim/gated_10t

effect give @a[tag=fd.in_warp_dimension] slow_falling 1 1 true
effect give @a[tag=fd.in_warp_dimension] resistance 1 4 true
effect give @a[tag=fd.in_warp_dimension] jump_boost 1 3 true

execute as @a[tag=fd.in_warp_dimension] at @s if predicate fluid_dimensions:ypos/warp_floor positioned 0 64 0 run tp @s ~ ~ ~

execute as @a[tag=fd.in_warp_dimension] at @s unless predicate fluid_dimensions:dim/in_warp run function fluid_dimensions:warp_dim/exit

execute if entity @a[tag=fd.in_warp_dimension] run schedule function fluid_dimensions:warp_dim/gated_10t 10t

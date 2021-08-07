# From: i/tick/i

# Arrow weakener
execute as @e[type=#fluid_dimensions:arrows,distance=..5] run data modify entity @s damage set value 1.0d

# Particles
particle minecraft:lava ~ ~0.99875 ~ 0.4 0.3 0.4 0.12 1

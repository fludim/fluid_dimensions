# From: i/tick/i

# Projectile deflect
execute as @e[type=#fluid_dimensions:projectiles,tag=!fd.proj_saved,distance=..5] at @s run function fluid_dimensions:projectile_bounce/reverse

# Particles
particle minecraft:lava ~ ~0.99875 ~ 0.4 0.3 0.4 0.12 1

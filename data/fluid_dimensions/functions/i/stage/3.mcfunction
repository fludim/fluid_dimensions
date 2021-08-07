# From: i/tick/i

# Projectile deflect
execute as @e[type=#fluid_dimensions:projectiles,tag=!fd.proj_saved,distance=..5] at @s run function fluid_dimensions:projectile_bounce/reverse

# Particles
particle minecraft:lava ~ ~0.99875 ~ 0.4 0.5 0.4 0.12 3
particle minecraft:dust_color_transition 0.9 0.1 0 2 0.3 0.1 0 ~ ~0.99875 ~ 0.5 0.5 0.5 0.2 4

# Speeed
execute as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run function fluid_dimensions:i/stage/speed


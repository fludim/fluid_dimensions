# From: i/tick/i

# Particles
particle minecraft:lava ~ ~0.99875 ~ 0.4 0.5 0.4 0.12 3
particle minecraft:dust_color_transition 0.9 0.1 0 2 0.3 0.1 0 ~ ~0.99875 ~ 0.5 0.5 0.5 0.2 4

# Carrier
execute as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run function fluid_dimensions:i/stage/3_carrier

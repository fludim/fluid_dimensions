# From: #minecraft:tick
# Makes the wheels on the bus go round and round

# player
execute as @a at @s run function fluid_dimensions:player

# i
execute as @e[type=elder_guardian,tag=fd.i] at @s run function fluid_dimensions:i/tick/i
execute as @e[type=vex,tag=fd.i_carrier] at @s run function fluid_dimensions:i/tick/carrier

# Custom Blocks
function fluid_dimensions:custom_tiles/tick
function fluid_dimensions:ocular_forge/tick

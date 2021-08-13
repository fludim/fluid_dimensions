# From: #minecraft:tick
# Makes the wheels on the bus go round and round

# player
execute as @a at @s run function fluid_dimensions:player

# i
execute as @e[type=elder_guardian,tag=fd.i] at @s run function fluid_dimensions:i/tick/i
execute as @e[type=vex,tag=fd.i_carrier] at @s run function fluid_dimensions:i/tick/carrier

# Psirots
execute as @e[type=wither_skeleton,tag=fd.psirot] at @s run function fluid_dimensions:psirot/tick
execute as @e[type=armor_stand,tag=fd.psirot_hand] at @s run function fluid_dimensions:psirot/hand

# Custom Blocks
function fluid_dimensions:custom_tiles/tick
function fluid_dimensions:ocular_forge/tick

# Volatile Effluvia
execute as @e[type=area_effect_cloud,nbt={Age:0,Effects:[{Id:15b,Amplifier:49b}]}] at @s run function fluid_dimensions:volatile_effluvia/explode

# fd.tick
gamerule sendCommandFeedback true

# player
execute as @a at @s run function fluid_dimensions:player

# i
execute if entity @e[limit=1,tag=fd.i] as @e[tag=fd.i] run function fluid_dimensions:i/tick/i
execute if entity @e[limit=1,tag=fd.i_carrier] as @e[tag=fd.i_carrier] run function fluid_dimensions:i/tick/carrier

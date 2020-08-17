# fd.tick
gamerule sendCommandFeedback true

# player
execute as @a at @s run function fluid_dimensions:player

# i
execute if entity @e[tag=fd.i_carrier] run function fluid_dimensions:i/tick

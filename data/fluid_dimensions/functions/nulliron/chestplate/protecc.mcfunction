# From: nulliron/chestplate/check
# Protects against burning in fire for 10 seconds. Works similarly to the Turtle Shell, except the effect is not passive outside of fire.
# The player has to enter a fire block to reset the duration, so to keep the fire resistance, fire must be stepped in often. Kind of makes it like an addiction to fire.

execute as @s[tag=!fd.fire_safe] run effect give @s fire_resistance 10 0 true
tag @s add fd.fire_safe

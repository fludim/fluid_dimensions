# From: custom_tiles/determine
# Store current y, run an LCG between y = 0 and y value for new spawn depth
# Because Mojank with fossil features having hardcoded random surface offset

execute store result score @s fd.temp run data get entity @s Pos[1]

###tellraw @a {"score":{"name":"@s","objective":"fd.temp"},"color":"yellow","italic":false}

# Min of y or 5
scoreboard players operation @s fd.temp > $min_ore_depth fd.const
# Subtract 5 for desired LCG range (0 to y - 5)
scoreboard players operation @s fd.temp -= $min_ore_depth fd.const

scoreboard players operation #Modulus fd.lcg_main = @s fd.temp
function fluid_dimensions:lcg/random
scoreboard players operation $ore_depth fd.const = #Out fd.lcg_main
# Add back 5 for range of (5 to y)
scoreboard players operation $ore_depth fd.const += $min_ore_depth fd.const

execute as @e[type=marker,tag=fd.ore_needs_y_spread,distance=..3] run function fluid_dimensions:custom_tiles/y_set

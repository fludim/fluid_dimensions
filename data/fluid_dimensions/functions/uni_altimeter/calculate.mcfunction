# From: uni_altimeter/holding (if holding it)

# Initialise score fd.a_y as stored y position
execute store result score @s fd.a_y run data get entity @s Pos[1]

# Add amounts based on current dim
# Underridge is base (0)
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players operation @s fd.a_y += $nether fd.y
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players operation @s fd.a_y += $overworld fd.y
execute if entity @s[nbt={Dimension:"fluid_dimensions:upper_sky"}] run scoreboard players operation @s fd.a_y += $upper_sky fd.y

title @s actionbar [{"translate":"actionbar.fd.absolute_y_position"},{"score":{"name":"@s","objective":"fd.a_y"},"color":"#FF5B27"}]

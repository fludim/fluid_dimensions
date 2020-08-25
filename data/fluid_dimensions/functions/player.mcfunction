# From: tick

# Travel
function fluid_dimensions:travel/tick

# blindness tag
effect give @s[tag=fd.blindness] minecraft:blindness 2 0 true
tag @s remove fd.blindness

# Epearl check
execute if score @s fd.sball_thrown matches 1.. at @s run function fluid_dimensions:sky_pearl/check
scoreboard players reset @s fd.sball_thrown

# Universal Altimeter
function fluid_dimensions:uni_altimeter/holding

# Right clicks
function fluid_dimensions:i/tick/iris
function fluid_dimensions:enchanted_door/door

# Custom Ores Water Removal
execute if score @s fd.mine_nullite matches 1.. run execute as @e[type=item,nbt={Item:{tag:{fd_remove_water:1b}}}] at @s run function fluid_dimensions:custom_ore_spongify
execute if score @s fd.mine_peridot matches 1.. run execute as @e[type=item,nbt={Item:{tag:{fd_remove_water:1b}}}] at @s run function fluid_dimensions:custom_ore_spongify

# Void Veil
function fluid_dimensions:void_veil/tick

# right-click reset
scoreboard players reset @s[scores={fd.r_click=1..}] fd.r_click

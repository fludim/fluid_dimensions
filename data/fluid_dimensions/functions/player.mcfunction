# From: tick

# Travel
function fluid_dimensions:travel/tick

# Blindness tag
effect give @s[tag=fd.blindness] minecraft:blindness 2 0 true
tag @s remove fd.blindness

# Sball check
execute if score @s fd.sball_thrown matches 1.. at @s run function fluid_dimensions:sky_pearl/check
scoreboard players reset @s fd.sball_thrown

# Universal Altimeter
function fluid_dimensions:uni_altimeter/holding

# Right clicks
function fluid_dimensions:i/tick/iris
function fluid_dimensions:enchanted_door/door

# Void Veil
function fluid_dimensions:void_veil/tick

# Call r_click
execute if entity @s[scores={fd.r_click=1..}] run function fluid_dimensions:r_click

# Store fall distance with scale 100
execute store result score @s fd.fall_dist run data get entity @s FallDistance 100
execute if score @s fd.fall_dist matches 260.. as @s[predicate=fluid_dimensions:wearing/nulliron_boots] run function fluid_dimensions:nulliron/boots/protecc
execute if score @s[tag=fd.fall_safe] fd.fall_dist matches 0 run function fluid_dimensions:nulliron/boots/clear

# Nearby Pod interactions
execute as @e[type=villager,x=0,tag=fd.pod,tag=!fd.pod_id_set] run function fluid_dimensions:pod/interact/tick
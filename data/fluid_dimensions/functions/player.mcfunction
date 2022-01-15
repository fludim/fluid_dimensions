# From: tick

# Travel
function fluid_dimensions:travel/tick

# Blindness tag
effect give @s[tag=fd.in_transit] minecraft:blindness 2 0 true
effect give @s[tag=fd.in_transit] minecraft:slow_falling 2 0 true
tag @s remove fd.in_transit

# Sball check
execute if score @s fd.sball_thrown matches 1.. at @s run function fluid_dimensions:sky_pearl/check

# Universal Altimeter
function fluid_dimensions:uni_altimeter/holding

# Right clicks
function fluid_dimensions:i/tick/iris
function fluid_dimensions:enchanted_door/door

# Call r_click
execute if entity @s[scores={fd.r_click=1..}] run function fluid_dimensions:r_click

# Decrement Nadir Tunneller cooldown
execute if score @s fd.tunneller_cd matches 1.. run scoreboard players remove @s fd.tunneller_cd 1

# Nulliron Boots: Store fall distance with scale 100
execute if predicate fluid_dimensions:wearing/nulliron_boots run function fluid_dimensions:nulliron/boots/checc
execute if entity @s[tag=fd.fall_safe] if score @s fd.fall_dist matches 0 run function fluid_dimensions:nulliron/boots/clear

# Nulliron Chestplate: Check equipped
execute as @s[tag=!fd.wearing_nulliron_chestplate] if predicate fluid_dimensions:wearing/nulliron_chestplate run tag @s add fd.wearing_nulliron_chestplate
execute as @s[tag=fd.wearing_nulliron_chestplate] if predicate fluid_dimensions:wearing/nulliron_chestplate run function fluid_dimensions:nulliron/chestplate/check
execute as @s[tag=fd.wearing_nulliron_chestplate] unless predicate fluid_dimensions:wearing/nulliron_chestplate run tag @s remove fd.wearing_nulliron_chestplate

# Nulliron Helmet: Check equipped
execute as @s[tag=!fd.wearing_nulliron_helmet] if predicate fluid_dimensions:wearing/nulliron_helmet run tag @s add fd.wearing_nulliron_helmet
execute as @s[tag=fd.wearing_nulliron_helmet] run function fluid_dimensions:nulliron/helmet/protecc
execute as @s[tag=fd.wearing_nulliron_helmet] unless predicate fluid_dimensions:wearing/nulliron_helmet run tag @s remove fd.wearing_nulliron_helmet

# Nearby Pod interactions
execute as @e[type=villager,x=0,tag=fd.pod,tag=!fd.pod_id_set] run function fluid_dimensions:pod/interact/tick

# I Miasma
execute if entity @e[tag=fd.i_miasma,distance=0..6] anchored eyes run function fluid_dimensions:i/miasma/collect

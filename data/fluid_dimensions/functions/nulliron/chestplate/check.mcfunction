# From: player
# Checks if in a fire block

tag @s add fd.wearing_nulliron_chestplate
execute if predicate fluid_dimensions:in_fire run function fluid_dimensions:nulliron/chestplate/protecc
execute as @s[tag=fd.fire_safe] run schedule function fluid_dimensions:nulliron/chestplate/check 1t
execute as @s[tag=fd.fire_safe] unless predicate fluid_dimensions:in_fire run function fluid_dimensions:nulliron/chestplate/clear

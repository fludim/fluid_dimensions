# From: tick

# Re-enable hopper minecarts if no OF near
execute as @e[type=hopper_minecart,tag=fd.mh_locked] run data modify entity @s Enabled set value 1
execute as @e[type=hopper_minecart,tag=fd.mh_locked] run tag @s remove fd.mh_locked

# Disable hopping things
execute as @e[type=glow_item_frame,tag=fd.ocular_forge] at @s run function fluid_dimensions:ocular_forge/clean_hoppers

# Main
execute as @e[type=glow_item_frame,tag=fd.ocular_forge,tag=!fd.of.closed,predicate=fluid_dimensions:ocular_forge/barrel/closed] at @s run function fluid_dimensions:ocular_forge/table/close
execute as @e[type=glow_item_frame,tag=fd.ocular_forge,tag=fd.of.closed,predicate=fluid_dimensions:ocular_forge/barrel/open] at @s run function fluid_dimensions:ocular_forge/table/open

execute as @e[type=glow_item_frame,tag=fd.ocular_forge,tag=!fd.of.closed] at @s run function fluid_dimensions:ocular_forge/table/main

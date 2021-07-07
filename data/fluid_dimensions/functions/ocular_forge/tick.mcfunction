# From: tick

# Disable minecart hoppers
execute as @e[distance=..1,type=hopper_minecart,tag=!global.ignore,tag=!fd.of.mh_lock] positioned ~ ~1 ~ if entity @e[distance=..1,type=glow_item_frame,tag=fd.ocular_forge] run data merge entity @s {Enabled:1,Tags:["fd.of.mh_locked"]}

# Main
execute as @e[type=glow_item_frame,tag=fd.ocular_forge,tag=!fd.of.closed,predicate=fluid_dimensions:ocular_forge/barrel/closed] at @s run function fluid_dimensions:ocular_forge/table/close
execute as @e[type=glow_item_frame,tag=fd.ocular_forge,tag=fd.of.closed,predicate=fluid_dimensions:ocular_forge/barrel/open] at @s run function fluid_dimensions:ocular_forge/table/open

execute as @e[type=glow_item_frame,tag=fd.ocular_forge,tag=!fd.of.closed] at @s run function fluid_dimensions:ocular_forge/table/main

# Destroy
execute as @e[type=glow_item_frame,tag=fd.ocular_forge,predicate=!fluid_dimensions:ocular_forge/barrel/barrel] at @s run function fluid_dimensions:ocular_forge/table/destroy

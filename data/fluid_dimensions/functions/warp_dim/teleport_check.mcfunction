# From: advancement enter_gateway

execute align xyz if entity @e[type=glow_item_frame,tag=fd.warp_dimension_charged,dx=0] run tag @s add fd.wd_teleport
execute if entity @s[tag=fd.wd_teleport] run function fluid_dimensions:warp_dim/where_to

schedule function fluid_dimensions:warp_dim/teleport_check_1t 1t

advancement revoke @s only fluid_dimensions:enter_gateway

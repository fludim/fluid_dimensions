# From: advancement enter_gateway

execute align xyz if entity @e[type=glow_item_frame,tag=fd.warp_dimension_charged,dx=0] in fluid_dimensions:warp positioned 0.0 64.0 0.0 run tp @s ~ ~ ~
advancement revoke @s only fluid_dimensions:enter_gateway

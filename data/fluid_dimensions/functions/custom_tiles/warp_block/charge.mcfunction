# From: custom_tiles/warp_block/block

tag @s add fd.warp_dimension_charged

execute as @e[type=item,dx=0,nbt={Item:{tag:{fd:{id:"realmglass"}}}}] run function fluid_dimensions:custom_tiles/warp_block/charge_use_realmglass

item modify entity @s container.0 fluid_dimensions:warp_block/charge

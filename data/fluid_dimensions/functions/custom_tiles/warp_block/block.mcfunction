# From: custom_tiles/tick

execute unless block ~ ~ ~ minecraft:end_gateway run kill @s[type=!player]

execute unless entity @s[tag=fd.warp_dimension_charged] align xyz if entity @e[type=item,dx=0,nbt={Item:{tag:{fd:{id:"realmglass"}}}}] run function fluid_dimensions:custom_tiles/warp_block/charge

scoreboard players set $Warp_Block_Exists fd.temp 1

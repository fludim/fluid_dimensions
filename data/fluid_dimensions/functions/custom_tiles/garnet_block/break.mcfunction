# From: custom_tiles/garnet_block/block

execute positioned ~ ~0.5 ~ run kill @e[distance=..0.7,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:emerald_block",Count:1b}},tag=!global.ignore,tag=!global.ignore.kill]
execute as @a[limit=1,distance=..6,scores={fd.mine_eblock=1..}] if predicate fluid_dimensions:holding/garnet_block/base run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/garnet_block
kill @s[type=!player]
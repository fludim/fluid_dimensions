# From: custom_tiles/nulliron_block/block

execute positioned ~ ~0.5 ~ run kill @e[distance=..0.7,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:iron_block",Count:1b}}]
execute as @a[limit=1,distance=..6,scores={fd.mine_iblock=1..}] if predicate fluid_dimensions:holding/nulliron_block/base run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/nulliron_block
kill @s[type=!player]
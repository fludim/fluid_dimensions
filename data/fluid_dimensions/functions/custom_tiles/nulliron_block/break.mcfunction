# From: custom_tiles/nulliron_block/block

execute positioned ~-0.5 ~ ~-0.5 run kill @e[type=minecraft:item,dx=1,dy=1,dz=1,nbt={Age:0s,Item:{id:"minecraft:iron_block"}},tag=!smithed.entity,limit=1]
execute as @a[limit=1,distance=..6,scores={fd.mine_iblock=1..}] if predicate fluid_dimensions:holding/nulliron_block/base run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/nulliron_block

# Non-player (or creative mode) breaking
execute unless entity @a[distance=..6,scores={fd.mine_iblock=1..}] run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/nulliron_block

kill @s[type=!player]

# From: custom_tiles/nullite_ore/block

execute positioned ~ ~0.5 ~ run kill @e[distance=..0.7,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:blackstone",Count:1b}}]
execute as @a[limit=1,distance=..6,scores={fd.mine_bstone=1..}] if predicate fluid_dimensions:holding/nullite_ore/base run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/nullite_ore
kill @s
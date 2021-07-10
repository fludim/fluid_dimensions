# From: custom_tiles/garnet_ore/block

execute positioned ~ ~0.5 ~ run kill @e[distance=..0.7,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:blackstone",Count:1b}},tag=!global.ignore,tag=!global.ignore.kill]
execute as @a[limit=1,distance=..6,scores={fd.mine_bstone=1..}] run function fluid_dimensions:custom_tiles/garnet_ore/drop_determine
kill @s[type=!player]

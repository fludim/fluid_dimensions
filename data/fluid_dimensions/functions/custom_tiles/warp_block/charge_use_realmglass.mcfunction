# From: custom_tiles/warp_block/charge, as item
# Depletes item stack by 1

execute store result entity @s Item.Count byte 0.99 run data get entity @s Item.Count

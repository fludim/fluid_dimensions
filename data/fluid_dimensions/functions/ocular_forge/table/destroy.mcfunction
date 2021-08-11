# From: custom_tiles/ocular_forge/block

# execute align xyz positioned ~-0.5 ~ ~-0.5 run kill @e[type=item,dx=1,dy=1,dz=1,nbt={Age:0s,Item:{tag:{fd:{tags:{"of_fill":1b}}}}}]
execute align xyz positioned ~-0.5 ~ ~-0.5 run kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,dx=1,dy=1,dz=1,nbt={Age:0s}]
# execute align xyz positioned ~-0.5 ~ ~-0.5 run kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,dx=1,dy=1,dz=1,nbt={Age:0s,Item:{id:"minecraft:barrel"}},limit=1]

data remove block 16942001 1 -14269007 Items

data modify block 16942001 1 -14269007 Items set from entity @s Item.tag.Items
data remove block 16942001 1 -14269007 Items[{Slot:15b}]
data remove block 16942001 1 -14269007 Items[{tag:{fd:{tags:{"of_gui_clear":1b}}}}]

data remove block 16942001 1 -14269007 Items[{tag:{fd:{tags:{"of_fill":1b}}}}]
data remove block 16942001 1 -14269007 Items[{tag:{fd:{tags:{"of_no_tag":1b}}}}].tag
data remove block 16942001 1 -14269007 Items[].tag.fd.tags."of_no_stack"

item replace block 16942001 1 -14269007 container.0 with glow_item_frame{CustomModelData:4470014,display:{Name:'{"translate":"block.fd.ocular_forge","italic":false}'},EntityTag:{Tags:["fd.ocular_forge","fd.ore","global.ignore","global.ignore.kill","global.ignore.pos"],Invulnerable:1b,Facing:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4470014,display:{Name:'{"text":""}'}}}},fd:{id:"ocular_forge",tags:{"block":1b}}}

execute align xyz run loot spawn ~0.5 ~0.4 ~0.5 mine 16942001 1 -14269007 air{drop_contents:1b}

#Re-enable adjacent hoppers

execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 7

execute if block ~ ~1 ~ hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 10
execute if block ~1 ~ ~ hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 10
execute if block ~-1 ~ ~ hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 10
execute if block ~ ~ ~1 hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 10
execute if block ~ ~ ~-1 hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 10

kill @s[type=!player]

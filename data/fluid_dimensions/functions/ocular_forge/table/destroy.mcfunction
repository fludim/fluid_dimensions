# From: ocular_forge/tick

execute align xyz positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,dx=1,dy=1,dz=1,nbt={Age:0s}]

data remove block 16942001 1 -14269007 Items

data modify block 16942001 1 -14269007 Items set from entity @s Item.tag.Items
data remove block 16942001 1 -14269007 Items[{Slot:15b}]
data remove block 16942001 1 -14269007 Items[{tag:{fd_of_gui_clear:1}}]

data remove block 16942001 1 -14269007 Items[{tag:{fd_of_fill:1}}]
data remove block 16942001 1 -14269007 Items[{tag:{fd_of_no_tag:1}}].tag
data remove block 16942001 1 -14269007 Items[].tag.fd_of_no_stack

item replace block 16942001 1 -14269007 container.0 with glow_item_frame{CustomModelData:4470014,display:{Name:'{"translate":"block.fd.ocular_forge","italic":false}'},EntityTag:{Tags:["fd.ocular_forge","fd.ore","global.ignore","global.ignore.kill","global.ignore.pos"],Invulnerable:1b,Facing:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4470014,display:{Name:'{"text":""}'}}}},fd_item_ore:1b,fd_ocular_forge:1b}

execute align xyz run loot spawn ~0.5 ~0.4 ~0.5 mine 16942001 1 -14269007 air{drop_contents:1b}

kill @s[type=!player]

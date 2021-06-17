execute align xyz positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,dx=1,dy=1,dz=1,nbt={Age:0s}]

data remove block 16942001 1 -14269007 Items

data modify block 16942001 1 -14269007 Items set from entity @s Item.tag.Items
data remove block 16942001 1 -14269007 Items[{Slot:15b}]
data remove block 16942001 1 -14269007 Items[{tag:{fd_of_gui_clear:1}}]

data remove block 16942001 1 -14269007 Items[{tag:{fd_of_fill:1}}]
data remove block 16942001 1 -14269007 Items[{tag:{fd_of_no_tag:1}}].tag
data remove block 16942001 1 -14269007 Items[].tag.fd_of_no_stack

item replace block 16942001 1 -14269007 container.0 with zombie_villager_spawn_egg{CustomModelData:4701014,display:{Name:'{"translate":"block.fd.ocular_forge","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Particle:"block air",ReapplicationDelay:0,Radius:0f,RadiusOnUse:0f,WaitTime:0,Tags:["fd.of.place","global.ignore","global.ignore.kill","global.ignore.pos"]}}

execute align xyz run loot spawn ~0.5 ~0.4 ~0.5 mine 16942001 1 -14269007 air{drop_contents:1b}

kill @s[type=!player]


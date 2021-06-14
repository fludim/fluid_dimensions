execute store success score Success fd.o_forge if block 16942001 1 -14269007 yellow_shulker_box
execute if score Success fd.o_forge matches 0 run function fluid_dimensions:ocular_forge/load

item replace block 16942001 1 -14269007 container.0 with zombie_villager_spawn_egg{CustomModelData:4701014,display:{Name:'{"translate":"block.fd.ocular_forge","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Particle:"block air",ReapplicationDelay:0,Radius:0f,RadiusOnUse:0f,WaitTime:0,Tags:["fd.of.place", "global.ignore", "global.ignore.kill", "global.ignore.pos"]}}

data modify block 16942001 1 -14269007 Items[0].Count set from entity @s SelectedItem.Count

loot replace entity @s weapon mine 16942001 1 -14269007 air{drop_contents:1b}
execute store success score Success fd.o_forge if block 16942001 1 -14269007 yellow_shulker_box
execute if score Success fd.o_forge matches 0 run function fluid_dimensions:ocular_forge/load

execute unless block ~ ~ ~ #fluid_dimensions:replaceable if block ~ ~1 ~ #fluid_dimensions:replaceable run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #fluid_dimensions:replaceable run summon item ~ ~ ~ {Item:{id:"zombie_villager_spawn_egg",Count:1b,tag:{fd_ocular_forge:1b,CustomModelData:4701014,display:{Name:'{"translate":"block.fd.ocular_forge","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Duration:1,Particle:"block air",ReapplicationDelay:0,Radius:0f,RadiusOnUse:0f,WaitTime:0,Tags:["fd.of.place","global.ignore","global.ignore.kill","global.ignore.pos"]}}}}

execute at @s if block ~ ~ ~ #fluid_dimensions:replaceable align xyz run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["fd.ocular_forge","global.ignore","global.ignore.kill","global.ignore.pos"],Invulnerable:1b,Facing:1b,Invisible:1b,Fixed:1b,Item:{id:"zombie_villager_spawn_egg",Count:1b,tag:{fd_ocular_forge:1b,CustomModelData:4701098}}}

execute at @s if block ~ ~ ~ #fluid_dimensions:replaceable run setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF843\\uF844","color":"white","font":"fluid_dimensions:gui"}'}

playsound minecraft:block.wood.place ambient @a[tag=!global.ignore,tag=!global.ignore.gui,distance=..7] ~ ~ ~ 1

kill @s[type=!player]
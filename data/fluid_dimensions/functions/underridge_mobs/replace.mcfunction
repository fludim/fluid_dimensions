#From: 10ticks, as @e[type=#fluid_dimensions:underridge_modify, tag=!fd.ur_mob]

#Basic replacement system for regular mobs that spawn because it's much easier and less laggy than whatever custom spawning mechanism I can come up with
#Tags: fd.ur_mob

##Harder Magma Cubes
execute if entity @s[type=minecraft:magma_cube] run attribute @s minecraft:generic.follow_range base set 60
execute if entity @s[type=minecraft:magma_cube,nbt={Size:3}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[type=minecraft:magma_cube,nbt={Size:3}] run data modify entity @s Health set value 30
execute if entity @s[type=minecraft:magma_cube] run attribute @s minecraft:generic.attack_damage base set 4
execute if entity @s[type=minecraft:magma_cube] run data modify entity @s DeathLootTable set value "fluid_dimensions:entities/ur_magma_cube"

##Haunted Armour
execute if entity @s[type=minecraft:skeleton] run function fluid_dimensions:haunted/resolve

#data merge because lots of stuff
execute if entity @s[type=minecraft:zombie] run data merge entity @s {Silent:1b,CustomNameVisible:0b,DeathLootTable:"fluid_dimensions:entities/cochineal",CanPickUpLoot:0b,IsBaby:1b,CanBreakDoors:0b,Tags:["fd.cochineal"],CustomName:'{"translate":"entity.fd.cochineal"}',HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4701051}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:"generic.max_health",Base:14},{Name:"generic.follow_range",Base:2},{Name:"generic.attack_damage",Base:3},{Name:"generic.armor",Base:8},{Name:"generic.movement_speed",Base:0.15}]}

execute if entity @s[type=minecraft:wither_skeleton] run data merge entity @s {CustomNameVisible:0b,DeathLootTable:"fluid_dimensions:entities/psirot",CanPickUpLoot:0b,PersistenceRequired:0b,Health:40f,Tags:["fd.psirot"],CustomName:'{"translate":"entity.fd.psirot"}',HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4701053}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4701053}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4701052}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.attack_damage",Base:8},{Name:"generic.attack_knockback",Base:0}]}

#add the checked tag to the mobs
team join fd.noNameTag @s
tag @s add fd.ur_mob

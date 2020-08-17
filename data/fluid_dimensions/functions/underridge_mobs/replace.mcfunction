#From: 10ticks

#Basic replacement system for regular mobs that spawn because it's much easier and less laggy than whatever custom spawning mechanism I can come up with
#Tags: fd.ur_mob

##Harder Magma Cubes
execute if entity @s[type=minecraft:magma_cube] run attribute @s minecraft:generic.follow_range base set 60
execute if entity @s[type=minecraft:magma_cube,nbt={Size:3}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[type=minecraft:magma_cube,nbt={Size:3}] run data modify entity @s Health set value 30
execute if entity @s[type=minecraft:magma_cube] run attribute @s minecraft:generic.attack_damage base set 4
execute if entity @s[type=minecraft:magma_cube] run data modify entity @s DeathLootTable set value "fluid_dimensions:entities/ur_magma_cube"

#data merge because lots of stuff
execute if entity @s[type=minecraft:zombie] run data merge entity @s {Silent:1b,CustomNameVisible:0b,DeathLootTable:"fluid_dimensions:entities/ur_cochineal",CanPickUpLoot:0b,IsBaby:1b,CanBreakDoors:0b,Tags:["fd.cochineal"],CustomName:'{"text":"Cochineal"}',HandItems:[{},{}],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4701051}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:14},{Name:generic.follow_range,Base:2},{Name:generic.attack_damage,Base:3},{Name:generic.armor,Base:8},{Name:generic.movement_speed,Base:0.15}]}

#add the checked tag to the mobs
tag @s add fd.ur_mob

# From: psirot/tick

summon armor_stand ~ ~ ~ {CustomName:'{"translate":"entity.fd.psirot"}',CustomNameVisible:0b,NoGravity:1b,Small:1b,Invisible:1b,Tags:["fd.psirot_hand","smithed.entity","smithed.strict"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4470053}}]}
scoreboard players set @s fd.hand_timer 0
scoreboard players remove @s fd.hand_count 1
execute as @s[scores={fd.hand_count=0}] run data merge entity @s {HandItems:[],Attributes:[{Name:"generic.attack_damage",Base:3d}]}
execute as @s[scores={fd.hand_count=1}] run data merge entity @s {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4470052}},{}],Attributes:[{Name:"generic.attack_damage",Base:5d}]}

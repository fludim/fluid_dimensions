# From: psirot/tick

scoreboard players add @s fd.hand_count 1
scoreboard players set @s fd.hand_timer 0
execute as @s[scores={fd.hand_count=1}] run data merge entity @s {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4470053}},{}],Attributes:[{Name:generic.attack_damage,Base:5}]}
execute as @s[scores={fd.hand_count=2}] run data merge entity @s {HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4470053}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,CustomModelData:4470053}}],Attributes:[{Name:generic.attack_damage,Base:8}]}

# From: underridge_mobs/replace
# Summons an echo

summon minecraft:stray ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"fluid_dimensions:entities/echo",CanPickUpLoot:0b,Health:80f,Tags:["fd.echo","global.ignore.modify"],CustomName:'{"translate":"entity.fd.echo"}',HandItems:[],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15872},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15872},Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:15872},Unbreakable:1b}}],ArmorDropChances:[0.085F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:0.8},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:7},{Name:"generic.armor",Base:16},{Name:"generic.armor_toughness",Base:4},{Name:"generic.attack_knockback",Base:0.5}]}
team join fd.noNameTag @e[type=stray,sort=nearest,limit=1,tag=fd.echo,distance=..0.1]
tp @s[type=!player] ~ ~-1000 ~

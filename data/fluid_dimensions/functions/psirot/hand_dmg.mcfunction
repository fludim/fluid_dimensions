# From: psirot/hand

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
effect give @e[tag=!global.ignore,distance=0..1] wither 3 1 true
effect give @e[type=!zombie,tag=!global.ignore,distance=0..1] instant_damage 1 0
effect give @e[type=zombie,tag=!global.ignore,distance=0..1] instant_health 1 0
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0
kill @s

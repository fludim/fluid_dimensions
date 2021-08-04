# From: psirot/hand

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1

effect give @e[tag=!global.ignore,distance=0..1] wither 3 1 true

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:dust_color_transition 0.2 0.1 0.3 2 0.1 0 0.2",CustomNameVisible:0b,ReapplicationDelay:0,Radius:0.8f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["fd.psirot_hand_dmg"],Effects:[{Id:7b,Amplifier:0b,Duration:21}],CustomName:'{"translate":"entity.fd.psirot"}'}
summon minecraft:area_effect_cloud ~ ~0.3 ~ {Particle:"minecraft:dust_color_transition 0.2 0.1 0.3 2 0.1 0 0.2",CustomNameVisible:0b,ReapplicationDelay:0,Radius:0.8f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["fd.psirot_hand_dmg"],Effects:[{Id:7b,Amplifier:0b,Duration:21}],CustomName:'{"translate":"entity.fd.psirot"}'}
summon minecraft:area_effect_cloud ~ ~0.6 ~ {Particle:"minecraft:dust_color_transition 0.2 0.1 0.3 2 0.1 0 0.2",CustomNameVisible:0b,ReapplicationDelay:0,Radius:0.8f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Tags:["fd.psirot_hand_dmg"],Effects:[{Id:7b,Amplifier:0b,Duration:21}],CustomName:'{"translate":"entity.fd.psirot"}'}

effect give @e[type=zombie,tag=!global.ignore,distance=0..1] instant_health 1 0

playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0

kill @s

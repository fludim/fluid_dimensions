effect give @e[limit=1,type=elder_guardian,tag=fd.i,sort=random] minecraft:invisibility 1000000 0 true
effect give @e[limit=1,type=elder_guardian,tag=fd.i,sort=random] minecraft:fire_resistance 1000000 0 true

execute as @e[type=elder_guardian,limit=1,scores={fd.i_id=1}] at @s run function fluid_dimensions:i/bossbar/1
execute unless entity @e[type=elder_guardian,scores={fd.i_id=1}] run bossbar set minecraft:fd.i_0 players

execute as @e[type=elder_guardian,limit=1,scores={fd.i_id=2}] at @s run function fluid_dimensions:i/bossbar/2
execute unless entity @e[type=elder_guardian,scores={fd.i_id=2}] run bossbar set minecraft:fd.i_1 players

execute as @e[type=elder_guardian,limit=1,scores={fd.i_id=3}] at @s run function fluid_dimensions:i/bossbar/3
execute unless entity @e[type=elder_guardian,scores={fd.i_id=3}] run bossbar set minecraft:fd.i_2 players

execute as @e[type=elder_guardian,limit=1,scores={fd.i_id=4}] at @s run function fluid_dimensions:i/bossbar/4
execute unless entity @e[type=elder_guardian,scores={fd.i_id=4}] run bossbar set minecraft:fd.i_3 players

execute as @e[type=elder_guardian,limit=1,scores={fd.i_id=5}] at @s run function fluid_dimensions:i/bossbar/5
execute unless entity @e[type=elder_guardian,scores={fd.i_id=5}] run bossbar set minecraft:fd.i_4 players

#Stages

execute as @e[type=elder_guardian,tag=fd.i] run function fluid_dimensions:i/stages

schedule function fluid_dimensions:i/10ticks 10t
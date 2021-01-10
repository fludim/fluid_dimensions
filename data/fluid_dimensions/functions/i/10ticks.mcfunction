effect give @e[limit=1,tag=fd.i,sort=random] minecraft:invisibility 1000000 0 true
effect give @e[limit=1,tag=fd.i,sort=random] minecraft:fire_resistance 1000000 0 true

execute store result bossbar minecraft:fd.i_0 max run attribute @e[limit=1,scores={fd.i_id=1}] minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_0 value run data get entity @e[limit=1,scores={fd.i_id=1}] Health
execute as @e[limit=1,scores={fd.i_id=1}] at @s run bossbar set minecraft:fd.i_0 players @a[distance=..150]
execute unless entity @e[scores={fd.i_id=1}] run bossbar set minecraft:fd.i_0 players

execute store result bossbar minecraft:fd.i_1 max run attribute @e[limit=1,scores={fd.i_id=2}] minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_1 value run data get entity @e[limit=1,scores={fd.i_id=2}] Health
execute as @e[limit=1,scores={fd.i_id=2}] at @s run bossbar set minecraft:fd.i_1 players @a[distance=..150]
execute unless entity @e[scores={fd.i_id=2}] run bossbar set minecraft:fd.i_1 players

execute store result bossbar minecraft:fd.i_2 max run attribute @e[limit=1,scores={fd.i_id=3}] minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_2 value run data get entity @e[limit=1,scores={fd.i_id=3}] Health
execute as @e[limit=1,scores={fd.i_id=3}] at @s run bossbar set minecraft:fd.i_2 players @a[distance=..150]
execute unless entity @e[scores={fd.i_id=3}] run bossbar set minecraft:fd.i_2 players

execute store result bossbar minecraft:fd.i_3 max run attribute @e[limit=1,scores={fd.i_id=4}] minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_3 value run data get entity @e[limit=1,scores={fd.i_id=4}] Health
execute as @e[limit=1,scores={fd.i_id=4}] at @s run bossbar set minecraft:fd.i_3 players @a[distance=..150]
execute unless entity @e[scores={fd.i_id=4}] run bossbar set minecraft:fd.i_3 players

execute store result bossbar minecraft:fd.i_4 max run attribute @e[limit=1,scores={fd.i_id=5}] minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_4 value run data get entity @e[limit=1,scores={fd.i_id=5}] Health
execute as @e[limit=1,scores={fd.i_id=5}] at @s run bossbar set minecraft:fd.i_4 players @a[distance=..150]
execute unless entity @e[scores={fd.i_id=5}] run bossbar set minecraft:fd.i_4 players

#Stages
execute as @e[tag=fd.i] run function fluid_dimensions:i/stages

schedule function fluid_dimensions:i/10ticks 10t

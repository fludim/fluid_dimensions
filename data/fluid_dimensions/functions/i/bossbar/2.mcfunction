execute store result bossbar minecraft:fd.i_1 max run attribute @s minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_1 value run data get entity @s Health
bossbar set minecraft:fd.i_1 players @a[distance=..150]
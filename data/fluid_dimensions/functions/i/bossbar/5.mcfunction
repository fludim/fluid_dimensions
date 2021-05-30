execute store result bossbar minecraft:fd.i_4 max run attribute @s minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_4 value run data get entity @s Health
bossbar set minecraft:fd.i_4 players @a[distance=..150]
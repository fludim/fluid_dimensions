execute store result bossbar minecraft:fd.i_0 max run attribute @s minecraft:generic.max_health get
execute store result bossbar minecraft:fd.i_0 value run data get entity @s Health
bossbar set minecraft:fd.i_0 players @a[distance=..150]
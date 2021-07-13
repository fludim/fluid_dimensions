# From: i/stages
# Modifies attributes of the I and its carrier upon fd.i_stage change

# Stage 1
execute if score @s fd.i_stage matches 1 run attribute @s minecraft:generic.armor base set 12
execute if score @s fd.i_stage matches 1 positioned ~ ~-1.6 ~ run attribute @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] minecraft:generic.attack_damage base set 10

# Stage 2
execute if score @s fd.i_stage matches 2 run attribute @s minecraft:generic.armor base set 18
execute if score @s fd.i_stage matches 2 positioned ~ ~-1.6 ~ run attribute @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] minecraft:generic.attack_damage base set 15

# Stage 3
execute if score @s fd.i_stage matches 3 run attribute @s minecraft:generic.armor base set 24
execute if score @s fd.i_stage matches 3 positioned ~ ~-1.6 ~ run attribute @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] minecraft:generic.attack_damage base set 20

# Explosion
effect give @s resistance 3 4 true
particle flame ~ ~0.99875 ~ 0.5 0.5 0.5 0.2 60
summon minecraft:creeper ~ ~ ~ {Tags:["fd.i_explosion"],NoGravity:1b,Silent:1b,Invulnerable:1b,PortalCooldown:9999,PersistenceRequired:1b,NoAI:1b,Health:1f,ExplosionRadius:-9b,Fuse:0,CustomName:'{"translate":"entity.fd.i","color":"dark_red","bold":true,"italic":false}'}

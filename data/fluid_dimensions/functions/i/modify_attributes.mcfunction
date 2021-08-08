# From: i/stages
# Modifies attributes of the I and its carrier and starts events upon fd.i_stage change

# Stage 1
execute if score @s fd.i_stage matches 1 run attribute @s minecraft:generic.armor base set 12
execute if score @s fd.i_stage matches 1 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run attribute @s minecraft:generic.attack_damage base set 10
execute if score @s fd.i_stage matches 1 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run attribute @s minecraft:generic.attack_knockback base set 0.1

# Stage 2
execute if score @s fd.i_stage matches 2 run attribute @s minecraft:generic.armor base set 18
execute if score @s fd.i_stage matches 2 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run attribute @s minecraft:generic.attack_damage base set 15
execute if score @s fd.i_stage matches 2 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run attribute @s minecraft:generic.attack_knockback base set 0.3

# Stage 3
execute if score @s fd.i_stage matches 3 run attribute @s minecraft:generic.armor base set 24
execute if score @s fd.i_stage matches 3 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run attribute @s minecraft:generic.attack_damage base set 20
execute if score @s fd.i_stage matches 3 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run attribute @s minecraft:generic.attack_knockback base set 0.5

## Change Model
execute if score @s fd.i_stage matches 3 positioned ~ ~-1.6 ~ as @e[limit=1,type=vex,tag=fd.i_carrier,sort=nearest] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 4470059

# Explosion
effect give @s resistance 2 4 true
particle flame ~ ~0.99875 ~ 0.5 0.5 0.5 0.2 60
summon minecraft:creeper ~ ~ ~ {Tags:["fd.i_explosion"],NoGravity:1b,Silent:1b,Invulnerable:1b,PortalCooldown:9999,PersistenceRequired:1b,NoAI:1b,Health:1f,ExplosionRadius:-9b,Fuse:0,CustomName:'{"translate":"entity.fd.i","color":"dark_red","bold":true,"italic":false}'}

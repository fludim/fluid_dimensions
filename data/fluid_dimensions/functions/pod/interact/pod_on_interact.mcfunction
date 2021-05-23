# From: pod/interact/find_entity

# Reset ripeness to 0 and stage to 3
scoreboard players set @s fd.pod_ripeness 0
scoreboard players set @s fd.pod_stage 3

# Change to last non-ready model
data modify entity @s HandItems[0].tag.CustomModelData set value 4701057

# Remove ready tag
tag @s remove fd.pod_ready

# A sound
playsound minecraft:entity.axolotl.attack master @a ~ ~ ~ 1 0.67 1
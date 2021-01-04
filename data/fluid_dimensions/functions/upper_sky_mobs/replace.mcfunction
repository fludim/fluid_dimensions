#From: 10ticks, as @e[type=#fluid_dimensions:upper_sky_modify]

#Basic replacement system for mobs that spawn because it's much easier and less laggy than whatever custom spawning mechanism I can come up with
#Tags: fd.us_mob

##Harder Slimes
execute if entity @s[type=minecraft:slime,nbt={Size:3}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[type=minecraft:slime,nbt={Size:3}] run data modify entity @s Health set value 30

##Harder Drowneds
execute if entity @s[type=minecraft:drowned] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[type=minecraft:drowned] run attribute @s minecraft:generic.follow_range base set 80

##Custom Strays
execute if entity @s[type=minecraft:stray] run attribute @s minecraft:generic.max_health base set 32
execute if entity @s[type=minecraft:stray] run data modify entity @s Health set value 32
execute if entity @s[type=minecraft:stray] run attribute @s minecraft:generic.follow_range base set 25
execute if entity @s[type=minecraft:stray] run replaceitem entity @s weapon.mainhand minecraft:diamond_pickaxe{display:{Name:'{"translate":"item.fd.sharpened_diamond_pickaxe","color":"aqua","italic":false}'},RepairCost:999999,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;1529320876,-706723786,-2014194444,1474272158],Slot:"mainhand"}]}

#add the checked tag to the mobs
tag @s add fd.us_mob

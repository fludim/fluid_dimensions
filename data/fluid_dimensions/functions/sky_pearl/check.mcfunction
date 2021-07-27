# From: player, as @a[scores={fd.sball_thrown=1..}]
# Checks if thrown snowball is Sky Pearl

execute if entity @e[type=minecraft:snowball,sort=nearest,limit=1,nbt={Item:{tag:{fd:{id:"sky_pearl"}}}}] run function fluid_dimensions:sky_pearl/activate
scoreboard players reset @s fd.sball_thrown

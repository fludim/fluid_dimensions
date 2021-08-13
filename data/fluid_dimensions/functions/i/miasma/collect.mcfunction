# From: player, i/miasma/collect

execute as @e[type=armor_stand,tag=fd.i_miasma_collect,distance=..5,nbt={HandItems:[{id:"minecraft:glass_bottle"}]}] run function fluid_dimensions:i/miasma/use

kill @e[tag=fd.i_miasma_collect]

execute if block ~ ~ ~ #fluid_dimensions:air if entity @s[distance=..4.5,nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] if entity @e[tag=fd.i_miasma,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=fd.i_miasma,dx=0] positioned ~0.99 ~0.64 ~0.99 run summon armor_stand ^ ^ ^-1 {ShowArms:1b,Small:1b,Invisible:1b,Tags:["fd.i_miasma_collect"]}
execute as @s[advancements={fluid_dimensions:miasma=true}] unless entity @s[gamemode=creative,nbt={Inventory:[{id:"minecraft:clock",tag:{CustomModelData:4470025}}]}] run give @s minecraft:clock{fd:{id:"bottled_miasma"},display:{Name:'{"translate":"fd.item.bottled_miasma","italic":false}'},CustomModelData:4470025}
advancement revoke @s only fluid_dimensions:miasma
execute if block ~ ~ ~ #fluid_dimensions:air if entity @s[distance=..4.5,nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] unless entity @e[tag=fd.i_miasma,dx=0,dy=0,dz=0] positioned ^ ^ ^0.25 run function fluid_dimensions:i/miasma/collect

item replace entity @s[predicate=fluid_dimensions:void_veil/from_offhand] weapon.offhand with air
execute as @s[gamemode=!creative] if data entity @s SelectedItem.tag.fd{id:"void_veil"} run item replace entity @s weapon.mainhand with air

playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 1 0

loot replace entity @s armor.head loot fluid_dimensions:items/void_veil
##advancement grant @s only

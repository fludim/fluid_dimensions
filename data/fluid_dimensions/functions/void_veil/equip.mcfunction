item entity @s[predicate=fluid_dimensions:void_veil/from_offhand] weapon.offhand replace air
item entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{fd_void_veil:1b}}}] weapon.mainhand replace air

playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 1 0

loot replace entity @s armor.head loot fluid_dimensions:items/void_veil
##advancement grant @s only

replaceitem entity @s[gamemode=!creative,nbt=!{SelectedItem:{tag:{fd_void_veil:1b}}},nbt={Inventory:[{tag:{fd_void_veil:1b},Slot:-106b}]}] weapon.offhand air
replaceitem entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{fd_void_veil:1b}}}] weapon.mainhand air

playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 1 0

loot replace entity @s armor.head loot fluid_dimensions:items/void_veil
##advancement grant @s only

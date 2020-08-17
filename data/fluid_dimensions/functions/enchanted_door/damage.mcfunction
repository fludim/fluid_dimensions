execute if entity @s[nbt={SelectedItem:{tag:{Damage:80}}}] run replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[nbt={SelectedItem:{tag:{Damage:60}}}] run loot replace entity @s weapon.mainhand loot fluid_dimensions:ewd_damaged/80
execute if entity @s[nbt={SelectedItem:{tag:{Damage:40}}}] run loot replace entity @s weapon.mainhand loot fluid_dimensions:ewd_damaged/60
execute if entity @s[nbt={SelectedItem:{tag:{Damage:20}}}] run loot replace entity @s weapon.mainhand loot fluid_dimensions:ewd_damaged/40
execute if entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] run loot replace entity @s weapon.mainhand loot fluid_dimensions:ewd_damaged/20

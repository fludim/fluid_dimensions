# From: return

execute unless entity @s[nbt={SelectedItem:{tag:{Damage:80}}}] run item modify entity @s weapon.mainhand fluid_dimensions:damage_20
execute if entity @s[nbt={SelectedItem:{tag:{Damage:80}}}] run item replace entity @s weapon.mainhand with minecraft:air

# From: return

execute unless entity @s[nbt={SelectedItem:{tag:{Damage:80}}}] run item entity @s weapon.mainhand modify fluid_dimensions:damage_20
execute if entity @s[nbt={SelectedItem:{tag:{Damage:80}}}] run item entity @s weapon.mainhand replace minecraft:air

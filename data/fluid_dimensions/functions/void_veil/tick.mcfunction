#From: player
execute unless entity @s[nbt=!{SelectedItem:{tag:{fd_void_veil:1b}}},nbt=!{Inventory:[{tag:{fd_void_veil:1b},Slot:-106b}]}] as @s[scores={fd.r_click=1..},nbt=!{Inventory:[{Slot:103b}]}] at @s run function fluid_dimensions:void_veil/equip

execute if entity @s[predicate=fluid_dimensions:using_void_veil] run function fluid_dimensions:void_veil/protecc

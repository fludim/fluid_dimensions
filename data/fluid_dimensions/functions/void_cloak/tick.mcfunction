#From: player
execute unless entity @s[nbt=!{SelectedItem:{tag:{fd_void_cloak:1b}}},nbt=!{Inventory:[{tag:{fd_void_cloak:1b},Slot:-106b}]}] as @s[scores={fd.r_click=1..},nbt=!{Inventory:[{Slot:103b}]}] at @s run function fluid_dimensions:void_cloak/equip

execute if entity @s[predicate=fluid_dimensions:using_void_cloak] run function fluid_dimensions:void_cloak/protecc


execute unless entity @s[tag=fd.of.display_craft] if data storage fluid_dimensions:craft Items[{id:"minecraft:dragon_breath"}] if data storage fluid_dimensions:craft Items[{id:"minecraft:clock",tag:{fd:{id:"bottled_miasma"}}}] if data storage fluid_dimensions:craft Items[{id:"minecraft:fire_charge"}] run function fluid_dimensions:ocular_forge/craft/a_vile_effluvium

execute if predicate fluid_dimensions:holding/broth/main_sing run function fluid_dimensions:pod/fill_main_sing
execute if entity @s[advancements={fluid_dimensions:milk_pod=true}] if predicate fluid_dimensions:holding/broth/main_mult run function fluid_dimensions:pod/fill_main_mult
execute if entity @s[advancements={fluid_dimensions:milk_pod=true}] if predicate fluid_dimensions:holding/broth/off_sing run function fluid_dimensions:pod/fill_off_sing
execute if entity @s[advancements={fluid_dimensions:milk_pod=true}] if predicate fluid_dimensions:holding/broth/off_mult run function fluid_dimensions:pod/fill_off_mult

# From: custom_tiles/garnet_ore/break

# All are >= diamond pickaxe

# No ench
execute if predicate fluid_dimensions:holding/garnet_ore/base run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/garnet_ore
# Fortune 1

execute if predicate fluid_dimensions:holding/garnet_ore/fortune_1 run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/garnet_ore_fortune_1

# Fortune 2
execute if predicate fluid_dimensions:holding/garnet_ore/fortune_2 run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/garnet_ore_fortune_2

# Fortune 3
execute if predicate fluid_dimensions:holding/garnet_ore/fortune_3 run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/garnet_ore_fortune_3

# Silk Touch
execute if predicate fluid_dimensions:holding/garnet_ore/silk_touch run loot spawn ~ ~0.5 ~ loot fluid_dimensions:blocks/garnet_ore_silk_touch

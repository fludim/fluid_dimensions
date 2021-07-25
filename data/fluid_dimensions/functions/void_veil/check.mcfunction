# From: advancement on_void_damage

execute if entity @s[predicate=fluid_dimensions:void_veil/using] run function fluid_dimensions:void_veil/protecc
advancement revoke @s only fluid_dimensions:on_void_damage
say VOIDPROTECC
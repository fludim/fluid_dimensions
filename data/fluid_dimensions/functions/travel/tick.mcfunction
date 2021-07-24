# travel

# From Upper Sky:
execute if entity @s[predicate=fluid_dimensions:ypos/upper_sky_lb] run function fluid_dimensions:travel/go_overworld_from_upper_sky

# From Overworld:
execute if entity @s[predicate=fluid_dimensions:ypos/overworld_ub] run function fluid_dimensions:travel/go_upper_sky_from_overworld
execute if entity @s[predicate=fluid_dimensions:ypos/overworld_lb] run function fluid_dimensions:travel/go_nether_from_overworld

# From Nether:
execute if entity @s[predicate=fluid_dimensions:ypos/the_nether_ub] run function fluid_dimensions:travel/go_overworld_from_nether
execute if entity @s[predicate=fluid_dimensions:ypos/the_nether_lb] run function fluid_dimensions:travel/go_underridge_from_nether

# From Underridge:
execute if entity @s[predicate=fluid_dimensions:ypos/underridge_ub] run function fluid_dimensions:travel/go_nether_from_underridge

# From: nadir_tunnel/determine
# Checks for being at the bottom of the world, or on either side of the nether roof

# Mutually exclusive positions in the predicates, should not overlap
execute if predicate fluid_dimensions:tunnellable run function fluid_dimensions:nadir_tunnel/create
execute if predicate fluid_dimensions:nether_ceiling_tunnellable_up run function fluid_dimensions:nadir_tunnel/nether_create
execute if predicate fluid_dimensions:nether_ceiling_tunnellable_down run function fluid_dimensions:nadir_tunnel/nether_create

# From: warp_dim/room/generate_check
# Generates the Room

# Box
fill -10 55 -10 9 74 9 minecraft:smooth_sandstone
fill -6 59 -6 5 67 5 minecraft:air

# Erode
fill -1 64 -10 0 65 9 minecraft:air
fill -10 64 -1 9 65 0 minecraft:air
fill -2 72 -2 1 74 1 minecraft:air
fill -2 55 -2 1 57 1 minecraft:air

fill -1 63 -7 0 63 6 minecraft:air
fill -7 63 -1 6 63 0 minecraft:air

fill -2 63 -10 1 66 -9 minecraft:air
fill -2 63 8 1 66 9 minecraft:air
fill -10 63 -2 -9 66 1 minecraft:air
fill 8 63 -2 9 66 1 minecraft:air

# Stairs
fill -1 63 -8 0 63 -8 minecraft:smooth_sandstone_stairs[facing=north]
fill -1 63 8 0 63 8 minecraft:smooth_sandstone_stairs[facing=north]
fill -1 63 7 0 63 7 minecraft:smooth_sandstone_stairs[facing=south]
fill 0 63 -9 -1 63 -9 minecraft:smooth_sandstone_stairs[facing=south]
fill -8 63 0 -8 63 -1 minecraft:smooth_sandstone_stairs[facing=west]
fill 8 63 0 8 63 -1 minecraft:smooth_sandstone_stairs[facing=west]
fill 7 63 -1 7 63 0 minecraft:smooth_sandstone_stairs[facing=east]
fill -9 63 -1 -9 63 0 minecraft:smooth_sandstone_stairs[facing=east]

# Summon Markers
function fluid_dimensions:warp_dim/room/spawn_sixty_markers

## This does stuff with the markers, there were issues spreading them right
## after they were created (didn't work) so I delayed it
schedule function fluid_dimensions:warp_dim/room/generate_1t_in_warp 1t

# Generates the Room.

# Box
fill -7 58 -7 6 71 6 minecraft:smooth_sandstone outline
fill -8 57 -8 7 72 7 minecraft:smooth_sandstone outline
fill -9 56 -9 8 73 8 minecraft:smooth_sandstone outline
fill -10 55 -10 9 74 9 minecraft:smooth_sandstone outline
fill -6 68 -6 5 70 5 minecraft:smooth_sandstone

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
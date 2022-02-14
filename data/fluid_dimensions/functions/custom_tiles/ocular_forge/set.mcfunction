# From: custom_tiles/place

setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"\\uF843\\uF844","color":"white","font":"fluid_dimensions:gui"}'}
playsound minecraft:block.wood.place ambient @a[distance=..7] ~ ~ ~ 1
tag @s add fd.ore_placed

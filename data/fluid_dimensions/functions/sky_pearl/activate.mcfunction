#as the player
execute as @e[type=minecraft:snowball,sort=nearest,limit=1,nbt={Item:{tag:{fd_sky_pearl:1b}}}] run kill @s
tag @s add fd.sky_pearl_in_transit
execute if entity @s[tag=fd.sky_pearl_in_transit,nbt={Dimension:"minecraft:overworld"}] run function fluid_dimensions:sky_pearl/to_upper_sky
execute if entity @s[tag=fd.sky_pearl_in_transit,nbt={Dimension:"fluid_dimensions:upper_sky"}] run function fluid_dimensions:sky_pearl/to_overworld

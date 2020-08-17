# as @a[scores={fd.epearl_thrown=1..}]
# check if thrown snowball is Sky Pearl
execute if entity @e[type=minecraft:snowball,sort=nearest,limit=1,nbt={Item:{tag:{fd_sky_pearl:1b}}}] run function fluid_dimensions:sky_pearl/activate

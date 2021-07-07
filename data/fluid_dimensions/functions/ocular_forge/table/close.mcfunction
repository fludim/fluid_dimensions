# From: ocular_forge/tick

data modify block ~ ~ ~ Items prepend from storage fluid_dimensions:craft FillAllSlot[]

execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 7

execute if block ~ ~1 ~ hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 10
execute if block ~1 ~ ~ hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 10
execute if block ~-1 ~ ~ hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 10
execute if block ~ ~ ~1 hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 10
execute if block ~ ~ ~-1 hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 10

tag @s add fd.of.closed
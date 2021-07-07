# From: ocular_forge/tick

data remove block ~ ~ ~ Items[{tag:{fd_of_fill:1}}]
data remove block ~ ~ ~ Items[].tag.fd_of_no_stack
data remove block ~ ~ ~ Items[{tag:{fd_of_no_tag:1}}].tag

execute if predicate fluid_dimensions:ocular_forge/hopper/position/down run data modify block ~ ~-1 ~ TransferCooldown set value 2147483647

execute if block ~ ~1 ~ hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 2147483647
execute if block ~1 ~ ~ hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 2147483647
execute if block ~-1 ~ ~ hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 2147483647
execute if block ~ ~ ~1 hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 2147483647
execute if block ~ ~ ~-1 hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 2147483647

tag @s remove fd.of.h_up
tag @s remove fd.of.h_down
tag @s remove fd.of.h_west
tag @s remove fd.of.h_east
tag @s remove fd.of.h_north
tag @s remove fd.of.h_south

tag @s remove fd.of.closed

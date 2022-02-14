# From: ocular_forge/tick

execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run data remove block ~ ~ ~ Items[{tag:{fd:{tags:{"of_gui_clear":1b}}}}]
execute positioned ~ ~-1 ~ as @e[distance=..1.4,type=hopper_minecart] run data remove entity @s Items[{tag:{fd:{tags:{"of_gui_clear":1b}}}}]

execute positioned ~ ~-1 ~ as @e[distance=..1.4,type=hopper_minecart] run data merge entity @s {Enabled:0,Tags:["fd.mh_locked"]}

execute if predicate fluid_dimensions:ocular_forge/hopper/position/down run data modify block ~ ~-1 ~ TransferCooldown set value 2147483647

execute if block ~ ~1 ~ hopper[facing=down] run data modify block ~ ~1 ~ TransferCooldown set value 2147483647
execute if block ~1 ~ ~ hopper[facing=west] run data modify block ~1 ~ ~ TransferCooldown set value 2147483647
execute if block ~-1 ~ ~ hopper[facing=east] run data modify block ~-1 ~ ~ TransferCooldown set value 2147483647
execute if block ~ ~ ~1 hopper[facing=north] run data modify block ~ ~ ~1 TransferCooldown set value 2147483647
execute if block ~ ~ ~-1 hopper[facing=south] run data modify block ~ ~ ~-1 TransferCooldown set value 2147483647

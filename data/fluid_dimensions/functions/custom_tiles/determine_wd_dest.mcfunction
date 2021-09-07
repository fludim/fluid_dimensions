# From: custom_tiles/determine

execute if entity @s[tag=fd.wd_to_warp] run function fluid_dimensions:custom_tiles/warp_block/to/warp
execute if entity @s[tag=fd.wd_to_underridge] run function fluid_dimensions:custom_tiles/warp_block/to/underridge
execute if entity @s[tag=fd.wd_to_nether] run function fluid_dimensions:custom_tiles/warp_block/to/nether
execute if entity @s[tag=fd.wd_to_overworld] run function fluid_dimensions:custom_tiles/warp_block/to/overworld
execute if entity @s[tag=fd.wd_to_upper_sky] run function fluid_dimensions:custom_tiles/warp_block/to/upper_sky
execute if entity @s[tag=fd.wd_to_end] run function fluid_dimensions:custom_tiles/warp_block/to/end
execute as @e[type=minecraft:glow_item_frame,tag=fd.warp_block,tag=!fd.ore_placed,limit=1,distance=..1] at @s run function fluid_dimensions:custom_tiles/warp_block/set

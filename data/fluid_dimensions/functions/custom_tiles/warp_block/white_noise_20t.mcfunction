# From: load, custom_tiles/warp_block/white_noise_200t
# Plays white noise on loop if any Warp Blocks are near enough a player to be heard

# Score set to 1 if any WBs are loaded, 0 (default) if none
# If 0, new WBs call the loop again
scoreboard players set $Warp_Block_New fd.temp 0
execute store success score $Warp_Block_New fd.temp as @e[tag=fd.warp_block] at @s if entity @a[x=0] run function fluid_dimensions:custom_tiles/warp_block/white_noise

execute if score $Warp_Block_Exists fd.temp matches 1 run schedule function fluid_dimensions:custom_tiles/warp_block/white_noise_20t 20t

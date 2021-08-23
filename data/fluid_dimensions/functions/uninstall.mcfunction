# Please run this function before permanently disabling the pack to safely remove all pack features (as much as the game allows)

# Uninstalled pack message (credits: minecraft.tools)
execute store result score $command_feedback fd.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
tellraw @a ["",{"text":"==+----------------+==","color":"gray"},{"text":"\n\n      "},{"text":"Fluid","italic":true,"color":"blue"},{"text":" Dimensions","color":"gold"},{"text":"\n           "},{"text":"v0.1","color":"green"},{"text":"\n\n\n\nThe datapack and its\nrelated tags and\nscoreboard objectives\nhave been removed.\n\nThanks for trying the\npack.\n\n\n\n~"},{"text":"DylzMC","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/dylzmc/"}},{"text":"\n\n"},{"text":"==+----------------+==","color":"gray"}]
execute if score $command_feedback fd.temp matches 1 run gamerule sendCommandFeedback true

# Remove objectives
scoreboard objectives remove fd.temp
scoreboard objectives remove fd.sball_thrown
scoreboard objectives remove fd.i_id
scoreboard objectives remove fd.consume_book
scoreboard objectives remove fd.i_stage
scoreboard objectives remove fd.i_stage_last
scoreboard objectives remove fd.r_click
scoreboard objectives remove fd.health
scoreboard objectives remove fd.warp_time
scoreboard objectives remove fd.gamemode
scoreboard objectives remove fd.dimension
scoreboard objectives remove fd.y
scoreboard objectives remove fd.a_y
scoreboard objectives remove fd.mine_bstone
scoreboard objectives remove fd.mine_eblock
scoreboard objectives remove fd.mine_iblock
scoreboard objectives remove fd.pod_age
scoreboard objectives remove fd.pod_stage
scoreboard objectives remove fd.pod_ripeness
scoreboard objectives remove fd.fall_dist
scoreboard objectives remove fd.hurt
scoreboard objectives remove fd.hand_timer
scoreboard objectives remove fd.hand_dist
scoreboard objectives remove fd.hand_count
scoreboard objectives remove fd.i_laser
scoreboard objectives remove fd.i_laser_long
scoreboard objectives remove fd.i_laser_wait
scoreboard objectives remove fd.change_hold
scoreboard objectives remove fd.wd_dest

# Remove Pod objectives
function fluid_dimensions:pod/uninstall

# Remove I boss, bossbars, some tags (not all, in case reinstalled) and teams
tp @e[tag=fd.i] 0 -9999 0
tp @e[tag=fd.i_carrier] 0 -9999 0

tag @a remove fd.in_transit
tag @a remove fd.sky_pearl_in_transit
tag @a remove fd.just_tunnelled

bossbar remove minecraft:fd.i_0
bossbar remove minecraft:fd.i_1
bossbar remove minecraft:fd.i_2
bossbar remove minecraft:fd.i_3
bossbar remove minecraft:fd.i_4

advancement revoke @a from fluid_dimensions:root

team remove fd.noNameTag

# Uninstall Ocular Forge
function fluid_dimensions:ocular_forge/uninstall

# Kill custom blocks
kill @e[tag=fd.ore]

# Disable datapack (if name still the same)
datapack disable "file/Fluid Dimensions v0.1"

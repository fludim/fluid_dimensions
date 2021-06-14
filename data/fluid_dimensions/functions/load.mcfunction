# fd.load

# Teams
team add fd.noNameTag
team modify fd.noNameTag nametagVisibility never

# Welcome message (credits: minecraft.tools)
gamerule sendCommandFeedback false
tellraw @a ["",{"text":"==+----------------+==","color":"gray"},{"text":"\n      Thanks for using\n"},{"text":"       Fluid","italic":true,"color":"blue"},{"text":" Dimensions","color":"gold"},{"text":"\n"},{"text":"           v2.2","bold":true,"color":"green"},{"text":"\n\n"},{"text":"[Info]","color":"white","clickEvent":{"action":"run_command","value":"/function fluid_dimensions:info/1"}},{"text":"             ","color":"white"},{"text":"[Uninstall]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function fluid_dimensions:info/areyousure"}},{"text":"\n"},{"text":"==+----------------+==","color":"gray"}]

# Objectives setup
scoreboard objectives add fd.temp dummy
scoreboard objectives add fd.sball_thrown minecraft.used:minecraft.snowball "Snowball Used"
scoreboard objectives add fd.i_id dummy
scoreboard objectives add fd.consume_book minecraft.used:knowledge_book
scoreboard objectives add fd.r_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add fd.i_stage dummy
scoreboard objectives add fd.health dummy
scoreboard objectives add fd.warp_time dummy
scoreboard objectives add fd.gamemode dummy
scoreboard objectives add fd.dimension dummy
scoreboard objectives add fd.y dummy
scoreboard objectives add fd.a_y dummy
scoreboard objectives add fd.mine_bstone minecraft.mined:minecraft.blackstone
scoreboard objectives add fd.pod_age dummy
scoreboard objectives add fd.pod_stage dummy
scoreboard objectives add fd.pod_ripeness dummy
scoreboard objectives add fd.fall_dist dummy

function fluid_dimensions:pod/interact/load

# I preload
function fluid_dimensions:i/bossbar_config
scoreboard players reset @e fd.i_id
tag @e remove fd.i_id_tagged
scoreboard players set $counter fd.i_id 0

# Universal Altimeter heights
scoreboard players set $underridge fd.y 0
scoreboard players set $nether fd.y 511
scoreboard players set $end fd.y 1086
scoreboard players set $overworld fd.y 1533
scoreboard players set $upper_sky fd.y 1976

advancement grant @a only fluid_dimensions:root

# Set up Ocular Forge
function fluid_dimensions:ocular_forge/load

# Less-often-ticking functions:
## 10t
function fluid_dimensions:10ticks
## 10t, offset 5t
schedule function fluid_dimensions:i/10ticks 5t
## 6000t (5 mins)
function fluid_dimensions:6000ticks

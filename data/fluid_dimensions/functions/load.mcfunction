# From: #minecraft:load

# Teams
team add fd.noNameTag
team modify fd.noNameTag nametagVisibility never

# Objectives setup
scoreboard objectives add fd.temp dummy
scoreboard objectives add fd.sball_thrown minecraft.used:minecraft.snowball "Snowball Used"
scoreboard objectives add fd.i_id dummy
scoreboard objectives add fd.consume_book minecraft.used:knowledge_book
scoreboard objectives add fd.r_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add fd.i_stage dummy
scoreboard objectives add fd.i_stage_last dummy
scoreboard objectives add fd.health dummy
scoreboard objectives add fd.warp_time dummy
scoreboard objectives add fd.gamemode dummy
scoreboard objectives add fd.dimension dummy
scoreboard objectives add fd.y dummy
scoreboard objectives add fd.a_y dummy
scoreboard objectives add fd.mine_bstone minecraft.mined:minecraft.blackstone
scoreboard objectives add fd.mine_eblock minecraft.mined:minecraft.emerald_block
scoreboard objectives add fd.mine_iblock minecraft.mined:minecraft.iron_block
scoreboard objectives add fd.pod_age dummy
scoreboard objectives add fd.pod_stage dummy
scoreboard objectives add fd.pod_ripeness dummy
scoreboard objectives add fd.fall_dist dummy
scoreboard objectives add fd.hurt dummy
scoreboard objectives add fd.hand_timer dummy
scoreboard objectives add fd.hand_dist dummy
scoreboard objectives add fd.hand_count dummy
scoreboard objectives add fd.i_laser dummy
scoreboard objectives add fd.i_laser_long dummy
scoreboard objectives add fd.i_laser_wait dummy
scoreboard objectives add fd.kill_time dummy
scoreboard objectives add fd.change_hold dummy
scoreboard objectives add fd.wd_dest dummy
scoreboard objectives add fd.wd_rock_id dummy
scoreboard objectives add fd.tunneller_cd dummy

## Constant, gets set to 1 if Warp Dimension has been generated
scoreboard objectives add fd.wd_generated dummy
##

function fluid_dimensions:pod/load

function fluid_dimensions:lcg/load

function fluid_dimensions:ocular_forge/load

# I preload
function fluid_dimensions:i/bossbar_config
scoreboard players reset @e fd.i_id
tag @e remove fd.i_id_tagged
scoreboard players set $counter fd.i_id 0

# Universal Altimeter heights
scoreboard players set $underridge fd.y 0
scoreboard players set $nether fd.y 576
scoreboard players set $overworld fd.y 1152
scoreboard players set $upper_sky fd.y 1724

advancement grant @a only fluid_dimensions:root

# Nadir Tunneller cooldown score
scoreboard players add @a fd.tunneller_cd 0

# Custom ore min depth
scoreboard players set $min_ore_depth fd.const 5
scoreboard players set $ore_depth fd.const 0

# Less-often-ticking functions:
## 10t
function fluid_dimensions:10ticks
## 10t, offset 5t
schedule function fluid_dimensions:i/10ticks 5t
## 200t (10 secs)
function fluid_dimensions:custom_tiles/warp_block/white_noise_20t
## 6000t (5 mins)
function fluid_dimensions:6000ticks

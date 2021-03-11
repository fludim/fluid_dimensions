#Remove scores and tags
scoreboard objectives remove fd.sball_thrown
scoreboard objectives remove fd.i_id
scoreboard objectives remove fd.consume_book
scoreboard objectives remove fd.i_stage
scoreboard objectives remove fd.r_click
scoreboard objectives remove fd.health
scoreboard objectives remove fd.warp_time
scoreboard objectives remove fd.gamemode
scoreboard objectives remove fd.dimension
scoreboard objectives remove fd.y
scoreboard objectives remove fd.a_y
scoreboard objectives remove fd.mine_nullite
scoreboard objectives remove fd.mine_garnet
tp @e[tag=fd.i] 0 -999 0
tp @e[tag=fd.i_carrier] 0 -999 0
tag @e remove fd.blindness
tag @e remove fd.sky_pearl_in_transit
tag @e remove fd.us_mob
tag @e remove fd.ur_mob
tag @e remove fd.i
tag @e remove fd.i_carrier
tag @e remove fd.i_id_tagged
tag @e remove fd.cochineal
bossbar remove minecraft:fd.i_0
bossbar remove minecraft:fd.i_1
bossbar remove minecraft:fd.i_2
bossbar remove minecraft:fd.i_3
bossbar remove minecraft:fd.i_4
advancement revoke @a from fluid_dimensions:root

# Uninstalled pack message (credits: minecraft.tools)
gamerule sendCommandFeedback false
tellraw @a ["",{"text":"==+----------------+==","color":"gray"},{"text":"\n\n      "},{"text":"Fluid","italic":true,"color":"blue"},{"text":" Dimensions","color":"gold"},{"text":"\n           "},{"text":"v2.2","color":"green"},{"text":"\n\n\n\nThe datapack and its\nrelated tags and\nscoreboard objectives\nhave been removed.\n\nThanks for trying the\npack.\n\n\n\n~"},{"text":"DylzMC","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/dylzmc/"}},{"text":"\n\n"},{"text":"==+----------------+==","color":"gray"}]

#Disable datapack (if name still the same)
datapack disable "file/Fluid Dimensions v2.2"

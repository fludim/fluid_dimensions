# From: load
# Functions by TCasseBloc - Minecraft Commands Discord - https://discord.com/channels/154777837382008833/157097006500806656/743172271123857545

# Objectives
scoreboard objectives add fd.lcg_consts dummy
scoreboard objectives add fd.lcg_main dummy

# Constants (Prime for good measure)
scoreboard players set #Increment fd.lcg_consts 47093
scoreboard players set #Multiplier fd.lcg_consts 1103515249
scoreboard players set #Modulus fd.lcg_consts 100

# Initial UUID Seed
execute unless score #Seed fd.lcg_consts = #Seed fd.lcg_consts run function fluid_dimensions:lcg/get_seed

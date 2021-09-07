# From: LCG call

scoreboard players operation #Out fd.lcg_main = #Seed fd.lcg_consts

scoreboard players operation #Out fd.lcg_main *= #Multiplier fd.lcg_consts
scoreboard players operation #Out fd.lcg_main += #Increment fd.lcg_consts

# Overflow to get next Seed
scoreboard players operation #Seed fd.lcg_consts = #Out fd.lcg_main

# Modulus (default or custom)
execute unless score #Modulus fd.lcg_main = #Modulus fd.lcg_main run scoreboard players operation #Out fd.lcg_main %= #Modulus fd.lcg_consts
execute if score #Modulus fd.lcg_main = #Modulus fd.lcg_main run scoreboard players operation #Out fd.lcg_main %= #Modulus fd.lcg_main

scoreboard players reset #Modulus fd.lcg_main

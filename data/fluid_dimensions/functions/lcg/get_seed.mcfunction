# From: lcg/load
# Gets seed if not set

summon area_effect_cloud ~ ~ ~ {Tags:["fd.lcg.seed"]}
execute store result score #Seed fd.lcg_consts run data get entity @e[type=area_effect_cloud,tag=fd.lcg.seed,distance=0,limit=1] UUID[0]
kill @e[type=area_effect_cloud,tag=fd.lcg.seed,distance=0,limit=1]

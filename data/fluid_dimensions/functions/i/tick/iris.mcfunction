# From: player
 
#summoning and knowledge_book detection:
execute as @s[tag=fd.holding_stygian_iris,scores={fd.consume_book=1..}] at @s positioned ^ ^ ^3 run function fluid_dimensions:i/summon
## tag removed in summon
tag @s[predicate=fluid_dimensions:holding/stygian_iris,tag=!fd.holding_stygian_iris] add fd.holding_stygian_iris

summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",CustomName:'{"text":"I","color":"dark_red","bold":true,"italic":false}',PersistenceRequired:1b,Tags:["fd.i_carrier"],Passengers:[{id:"minecraft:elder_guardian",NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["fd.i"],CustomName:'{"text":"I","color":"dark_red","bold":true,"italic":false}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:500}]}],ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4470050}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:100}]}
scoreboard players reset @a fd.consume_book
tag @a remove fd.holding_stygian_iris
advancement grant @s only fluid_dimensions:stares_back

# From: player
# Protects against fall damage, up to 281 blocks is survivable with only these boots!

execute store result score @s fd.fall_dist run data get entity @s FallDistance 100
execute if score @s fd.fall_dist matches 260.. run function fluid_dimensions:nulliron/boots/protecc

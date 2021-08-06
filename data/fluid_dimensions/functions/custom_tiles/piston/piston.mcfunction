scoreboard players set $moved fd.test 0

execute store result score $progress fd.test run data get block ~ ~ ~ progress 10
execute store result score $facing fd.test run data get block ~ ~ ~ facing
execute store result score $ext fd.test run data get block ~ ~ ~ extending

execute if score $ext fd.test matches 1 run function fluid_dimensions:custom_tiles/piston/forward
execute if score $ext fd.test matches 0 run function fluid_dimensions:custom_tiles/piston/reverse

execute unless block ~ ~ ~ moving_piston run function fluid_dimensions:custom_tiles/piston/neighbour

execute if score $moved fd.test matches 1 run scoreboard players set @s fd.kill_time 0
execute if score $moved fd.test matches 0 run scoreboard players add @s fd.kill_time 1
kill @s[scores={fd.kill_time=2..}]
execute unless block ~-1 ~ ~ moving_piston unless block ~ ~-1 ~ moving_piston unless block ~ ~ ~-1 moving_piston unless block ~ ~ ~ moving_piston unless block ~ ~ ~1 moving_piston unless block ~ ~1 ~ moving_piston unless block ~1 ~ ~ moving_piston run tag @s add fd.ore_break

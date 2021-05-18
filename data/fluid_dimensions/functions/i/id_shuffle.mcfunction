#From: i/tick/i

scoreboard players operation $current fd.i_id = @s fd.i_id
scoreboard players remove $current fd.i_id 1
scoreboard players set $found fd.i_id 0
execute as @e[type=elder_guardian,tag=fd.i_id_tagged] if score @s fd.i_id = $current fd.i_id run scoreboard players set $found fd.i_id 1
execute if score $found fd.i_id matches 0 run scoreboard players remove @s fd.i_id 1

# From: tick

scoreboard players add @s fd.hand_timer 0
scoreboard players add @s fd.hand_count 0

execute as @s[scores={fd.hand_timer=0..30,fd.hand_count=0..1}] unless entity @a[gamemode=survival,distance=0..5] run scoreboard players add @s fd.hand_timer 1
execute as @s[scores={fd.hand_timer=0..30,fd.hand_count=2}] if entity @a[gamemode=survival,distance=10..40] run scoreboard players add @s fd.hand_timer 1

execute as @s[scores={fd.hand_timer=31..,fd.hand_count=1..2}] if entity @a[gamemode=survival,distance=10..40] run function fluid_dimensions:psirot/fire
execute as @s[scores={fd.hand_timer=31..,fd.hand_count=1}] unless entity @a[gamemode=survival,distance=10..40] run function fluid_dimensions:psirot/regen
execute as @s[scores={fd.hand_timer=31..,fd.hand_count=0}] run function fluid_dimensions:psirot/regen

execute as @s[scores={fd.hand_count=2}] unless entity @a[gamemode=survival,distance=10..40] run scoreboard players set @s fd.hand_timer 0

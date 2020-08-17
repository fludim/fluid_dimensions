#particles
##death
execute as @s[nbt=!{Passengers:[{}]}] at @s run particle minecraft:lava ~ ~2.3 ~ 0.8 0.8 0.8 0.07 40

#Kill empty carriers (after the death particles)
kill @s[nbt=!{Passengers:[{}]}]

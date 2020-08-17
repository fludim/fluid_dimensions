# From: door (still as @a)

scoreboard players reset @s fd.r_click

execute store result score @s fd.gamemode run data get entity @s playerGameType

# overworld is fallback (-1)
scoreboard players set @s fd.dimension -1
execute if entity @s[nbt={Dimension:"fluid_dimensions:underridge"}] run scoreboard players set @s fd.dimension 0
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s fd.dimension 1
execute if entity @s[nbt={Dimension:"fluid_dimensions:upper_sky"}] run scoreboard players set @s fd.dimension 2

# No Nether usage (roof area with no valid land underneath...)
# No durability is used, as that happens upon return
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] run function fluid_dimensions:enchanted_door/teleport

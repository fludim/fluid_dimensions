# From: return

##Overworld is fallback
execute if entity @s[scores={fd.dimension=-1}] in minecraft:overworld run tp @s ~ 256 ~

execute if entity @s[scores={fd.dimension=0}] run execute in fluid_dimensions:underridge run tp @s ~ 256 ~
execute if entity @s[scores={fd.dimension=1}] run execute in minecraft:the_end run tp @s ~ 256 ~
execute if entity @s[scores={fd.dimension=2}] run execute in fluid_dimensions:upper_sky run tp @s ~ 256 ~

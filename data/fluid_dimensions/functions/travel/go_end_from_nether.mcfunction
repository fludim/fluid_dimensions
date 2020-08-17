##execute in minecraft:the_end run tp @s ~ -191 ~
execute in minecraft:the_end run tp @s ~ ~-575 ~
tag @s add fd.blindness
execute as @s[advancements={fluid_dimensions:another_way=false}] run advancement grant @s only fluid_dimensions:another_way

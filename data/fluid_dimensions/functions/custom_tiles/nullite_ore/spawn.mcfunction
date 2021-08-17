# From: Structure Feature > Marker

summon glow_item_frame ~ ~ ~ {Tags:["fd.nullite_ore","fd.ore","global.ignore","global.ignore.kill","global.ignore.pos"],Invulnerable:1b,Facing:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:wooden_shovel",Count:1b,tag:{CustomModelData:4470004,display:{Name:'{"text":""}'}}}}
execute as @e[type=minecraft:glow_item_frame,tag=fd.nullite_ore,tag=!fd.ore_placed,limit=1,distance=..1] at @s run function fluid_dimensions:custom_tiles/nullite_ore/set

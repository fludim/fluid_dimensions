# From: warp_dim/teleport_check

execute align xyz if entity @e[type=glow_item_frame,tag=fd.wd_to_underridge,dx=0] run scoreboard players set @s fd.wd_dest 0
execute align xyz if entity @e[type=glow_item_frame,tag=fd.wd_to_nether,dx=0] run scoreboard players set @s fd.wd_dest 1
execute align xyz if entity @e[type=glow_item_frame,tag=fd.wd_to_overworld,dx=0] run scoreboard players set @s fd.wd_dest 2
execute align xyz if entity @e[type=glow_item_frame,tag=fd.wd_to_upper_sky,dx=0] run scoreboard players set @s fd.wd_dest 3
execute align xyz if entity @e[type=glow_item_frame,tag=fd.wd_to_end,dx=0] run scoreboard players set @s fd.wd_dest 4
execute align xyz if entity @e[type=glow_item_frame,tag=fd.wd_to_warp,dx=0] run scoreboard players set @s fd.wd_dest 5

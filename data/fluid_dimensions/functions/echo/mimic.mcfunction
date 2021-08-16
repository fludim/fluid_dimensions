# From: echo/tick

item replace entity @s weapon.mainhand from entity @p[distance=..20] weapon.mainhand
item replace entity @s weapon.offhand from entity @p[distance=..20] weapon.offhand
scoreboard players set @s fd.change_hold 0

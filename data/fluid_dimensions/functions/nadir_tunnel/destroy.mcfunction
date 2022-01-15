# From: nadir_tunnel/determine
# Destroys the nearest portal in range

execute store success score @s fd.temp run kill @e[type=!player,tag=fd.nadir_tunnel_top,distance=..3.5,limit=1,sort=nearest]
execute store success score @s fd.temp positioned ~ ~-1.4 ~ run kill @e[type=!player,tag=fd.nadir_tunnel_bottom,distance=..3.5,limit=1,sort=nearest]

# And resets the cooldown if successful, in case just a misplace
execute if score @s fd.temp matches 1 run scoreboard players set @s fd.tunneller_cd 10

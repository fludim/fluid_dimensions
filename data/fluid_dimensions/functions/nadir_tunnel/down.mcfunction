# From: advancement nadir_tunnel/down
# Tunnels a player down through bedrock

tp @s[tag=!fd.just_tunnelled] ~ ~-3.0 ~
advancement revoke @s only fluid_dimensions:nadir_tunnel/down
execute if entity @s[tag=!fd.just_tunnelled] run schedule function fluid_dimensions:nadir_tunnel/clear 40t
tag @s add fd.just_tunnelled

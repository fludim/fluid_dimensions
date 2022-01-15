# From: advancement nadir_tunnel/up
# Tunnels a player up through bedrock

tp @s[tag=!fd.just_tunnelled] ~ ~3.25 ~
advancement revoke @s only fluid_dimensions:nadir_tunnel/up
execute if entity @s[tag=!fd.just_tunnelled] run schedule function fluid_dimensions:nadir_tunnel/clear 60t
tag @s add fd.just_tunnelled

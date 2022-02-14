# From: nadir_tunnel/which_type
# Creates a temporary portal (10 minutes) through the y=128 bedrock layer in the Nether, down and up

summon minecraft:area_effect_cloud ~ 128.19 ~ {Particle:"minecraft:dust_color_transition 2.7182818 -0 -0. 3 .0 0. -.0",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:12000,Tags:["fd.nadir_tunnel","fd.nadir_tunnel_top","smithed.entity","smithed.strict"],Effects:[{Id:15b,Amplifier:47b,Duration:20}]}
summon minecraft:area_effect_cloud ~ 126.79 ~ {Particle:"minecraft:dust_color_transition 2.7182818 -0 -0. 3 .0 0. -.0",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:12000,Tags:["fd.nadir_tunnel","fd.nadir_tunnel_bottom","smithed.entity","smithed.strict"],Effects:[{Id:15b,Amplifier:48b,Duration:20}]}
scoreboard players set @s fd.tunneller_cd 400

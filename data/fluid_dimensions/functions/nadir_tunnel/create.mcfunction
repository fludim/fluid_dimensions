# From: r_click
# Creates a temporary portal (10 minutes) through the bottom bedrock layer, down and up.

summon minecraft:area_effect_cloud ~ ~-0.1 ~ {Particle:"minecraft:dust_color_transition 2.7182818 -0 -0. 3 .0 0. -.0",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:12000,Tags:["fd.nadir_tunnel","fd.nadir_tunnel_top","global.ignore_pos","global.ignore"],Effects:[{Id:15b,Amplifier:47b,Duration:20}]}
summon minecraft:area_effect_cloud ~ ~-1.8 ~ {Particle:"minecraft:dust_color_transition 2.7182818 -0 -0. 3 .0 0. -.0",ReapplicationDelay:0,Radius:1.0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:12000,Tags:["fd.nadir_tunnel","fd.nadir_tunnel_bottom","global.ignore_pos","global.ignore"],Effects:[{Id:15b,Amplifier:48b,Duration:20}]}

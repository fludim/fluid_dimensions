# From: pod/interact/reward

scoreboard players set $target fd.pod_id 0
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit0=true}}] run scoreboard players add $target fd.pod_id 1
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit1=true}}] run scoreboard players add $target fd.pod_id 2
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit2=true}}] run scoreboard players add $target fd.pod_id 4
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit3=true}}] run scoreboard players add $target fd.pod_id 8
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit4=true}}] run scoreboard players add $target fd.pod_id 16
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit5=true}}] run scoreboard players add $target fd.pod_id 32
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit6=true}}] run scoreboard players add $target fd.pod_id 64
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit7=true}}] run scoreboard players add $target fd.pod_id 128
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit8=true}}] run scoreboard players add $target fd.pod_id 256
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit9=true}}] run scoreboard players add $target fd.pod_id 512
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit10=true}}] run scoreboard players add $target fd.pod_id 1024
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit11=true}}] run scoreboard players add $target fd.pod_id 2048
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit12=true}}] run scoreboard players add $target fd.pod_id 4096
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit13=true}}] run scoreboard players add $target fd.pod_id 8192
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit14=true}}] run scoreboard players add $target fd.pod_id 16384
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit15=true}}] run scoreboard players add $target fd.pod_id 32768
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit16=true}}] run scoreboard players add $target fd.pod_id 65536
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit17=true}}] run scoreboard players add $target fd.pod_id 131072
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit18=true}}] run scoreboard players add $target fd.pod_id 262144
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit19=true}}] run scoreboard players add $target fd.pod_id 524288
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit20=true}}] run scoreboard players add $target fd.pod_id 1048576
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit21=true}}] run scoreboard players add $target fd.pod_id 2097152
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit22=true}}] run scoreboard players add $target fd.pod_id 4194304
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit23=true}}] run scoreboard players add $target fd.pod_id 8388608
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit24=true}}] run scoreboard players add $target fd.pod_id 16777216
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit25=true}}] run scoreboard players add $target fd.pod_id 33554432
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit26=true}}] run scoreboard players add $target fd.pod_id 67108864
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit27=true}}] run scoreboard players add $target fd.pod_id 134217728
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit28=true}}] run scoreboard players add $target fd.pod_id 268435456
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit29=true}}] run scoreboard players add $target fd.pod_id 536870912
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit30=true}}] run scoreboard players add $target fd.pod_id 1073741824
execute if entity @s[advancements={fluid_dimensions:pod_on_interact={bit31=true}}] run scoreboard players operation $target fd.pod_id *= -1 fd.const
execute as @e[type=villager,tag=fd.pod,scores={fd.pod_stage=4}] if score @s fd.pod_id = $target fd.pod_id at @s run function fluid_dimensions:pod/interact/pod_on_interact

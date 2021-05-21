# From: advancement pod_on_interact

execute if entity @s[advancements={fluid_dimensions:pod_on_interact={pod=true}}] run function fluid_dimensions:pod/interact/find_entity
advancement revoke @s only fluid_dimensions:pod_on_interact

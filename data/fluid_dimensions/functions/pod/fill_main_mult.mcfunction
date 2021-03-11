#From: resolve
give @s suspicious_stew{fd_midnight_broth:1b,display:{Name:'{"translate":"item.fd.midnight_broth","italic":false}'},CustomModelData:4701012,Effects:[{EffectId:2b,EffectDuration:10400},{EffectId:12b,EffectDuration:10400},{EffectId:16b,EffectDuration:10800}]}
item entity @s weapon.mainhand modify fluid_dimensions:decrement_count
advancement revoke @s only fluid_dimensions:milk_pod
say m_mult
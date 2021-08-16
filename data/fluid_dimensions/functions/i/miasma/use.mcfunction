# From: i/miasma/collect

kill @e[tag=fd.i_miasma,tag=fd.i_miasma_used,limit=1,sort=nearest,distance=..5]
tag @e[tag=fd.i_miasma,limit=1,sort=nearest,distance=..5] add fd.i_miasma_used

# From: ocular_forge/tick

data remove block ~ ~ ~ Items[{tag:{fd:{tags:{"of_fill":1b}}}}]
data remove block ~ ~ ~ Items[].tag.fd.tags."of_no_stack"
data remove block ~ ~ ~ Items[{tag:{fd:{tags:{"of_no_tag":1b}}}}].tag

tag @s remove fd.of.h_up
tag @s remove fd.of.h_down
tag @s remove fd.of.h_west
tag @s remove fd.of.h_east
tag @s remove fd.of.h_north
tag @s remove fd.of.h_south

tag @s remove fd.of.closed

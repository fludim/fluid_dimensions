# From: r_click
# Are we creating or removing a portal?

execute if predicate fluid_dimensions:is_sneaking run function fluid_dimensions:nadir_tunnel/destroy
execute if score @s fd.tunneller_cd matches 0 unless predicate fluid_dimensions:is_sneaking run function fluid_dimensions:nadir_tunnel/which_type

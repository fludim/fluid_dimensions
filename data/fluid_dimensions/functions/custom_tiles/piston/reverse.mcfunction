execute if score $facing fd.temp matches 0 if score $progress fd.temp matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.temp run tp @s ~ ~1 ~
execute if score $facing fd.temp matches 1 if score $progress fd.temp matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.temp run tp @s ~ ~-1 ~
execute if score $facing fd.temp matches 2 if score $progress fd.temp matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.temp run tp @s ~ ~ ~1
execute if score $facing fd.temp matches 3 if score $progress fd.temp matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.temp run tp @s ~ ~ ~-1
execute if score $facing fd.temp matches 4 if score $progress fd.temp matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.temp run tp @s ~1 ~ ~
execute if score $facing fd.temp matches 5 if score $progress fd.temp matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.temp run tp @s ~-1 ~ ~

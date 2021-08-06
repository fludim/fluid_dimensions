

execute if score $facing fd.test matches 0 if score $progress fd.test matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.test run tp @s ~ ~1 ~
execute if score $facing fd.test matches 1 if score $progress fd.test matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.test run tp @s ~ ~-1 ~
execute if score $facing fd.test matches 2 if score $progress fd.test matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.test run tp @s ~ ~ ~1
execute if score $facing fd.test matches 3 if score $progress fd.test matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.test run tp @s ~ ~ ~-1
execute if score $facing fd.test matches 4 if score $progress fd.test matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.test run tp @s ~1 ~ ~
execute if score $facing fd.test matches 5 if score $progress fd.test matches 5.. if block ~ ~ ~ moving_piston store success score $moved fd.test run tp @s ~-1 ~ ~
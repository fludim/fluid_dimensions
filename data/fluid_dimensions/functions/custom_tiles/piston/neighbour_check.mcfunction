execute store result score $progress fd.test run data get block ~ ~ ~ progress 10
execute if score $progress fd.test matches 5.. store success score $moved fd.test run tp @s ~ ~ ~

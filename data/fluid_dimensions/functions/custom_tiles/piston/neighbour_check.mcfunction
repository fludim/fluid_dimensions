execute store result score $progress fd.temp run data get block ~ ~ ~ progress 10
execute if score $progress fd.temp matches 5.. store success score $moved fd.temp run tp @s ~ ~ ~

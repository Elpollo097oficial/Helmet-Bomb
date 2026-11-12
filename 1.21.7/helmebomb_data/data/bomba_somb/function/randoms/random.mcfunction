summon minecraft:marker ~ ~ ~ {Tags:["rng.generator"]}
execute store result score rng# Random run data get entity @e[type=minecraft:marker, tag=rng.generator, limit=1, sort=nearest] UUID[0]
kill @e[type=minecraft:marker, tag=rng.generator, limit=1, sort=nearest]

scoreboard players set min# Random 1
scoreboard players set max# Random 2

scoreboard players operation rng# Random %= max# Random
scoreboard players operation rng# Random += min# Random
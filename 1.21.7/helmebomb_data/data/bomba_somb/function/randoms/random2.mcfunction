summon minecraft:marker ~ ~ ~ {Tags:["rng.generator"]}
execute store result score rng# Random2 run data get entity @e[type=minecraft:marker, tag=rng.generator, limit=1, sort=nearest] UUID[0]
kill @e[type=minecraft:marker, tag=rng.generator, limit=1, sort=nearest]

scoreboard players set min# Random2 1
scoreboard players set max# Random2 10

scoreboard players operation rng# Random2 %= max# Random2
scoreboard players operation rng# Random2 += min# Random2
summon minecraft:marker ~ ~ ~ {Tags:["rng.generator"]}
execute store result score rng# Random2 run data get entity @e[type=minecraft:marker, tag=rng.generator, limit=1, sort=nearest] UUID[0]
kill @e[type=minecraft:marker, tag=rng.generator, limit=1, sort=nearest]

$scoreboard players set min# Random2 $(x)
$scoreboard players set max# Random2 $(y)

scoreboard players operation rng# Random2 %= max# Random2
scoreboard players operation rng# Random2 += min# Random2

execute store result storage bomba:name n int 1 run scoreboard players get rng# Random2

function bomba_somb:randoms/setname with storage bomba:name

scoreboard players reset rng# Random2
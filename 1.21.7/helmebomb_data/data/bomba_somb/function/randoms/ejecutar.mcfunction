function bomba_somb:randoms/random

execute if score rng# Random matches 1 run execute as @s[tag=!PolloSombreTNT_activate] run tag @s add PolloSombreTNT_desactive
execute if score rng# Random matches 2 run execute as @s[tag=!PolloSombreTNT_desactive] run tag @s add PolloSombreTNT_activate


scoreboard players reset rng# Random
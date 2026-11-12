function bomba_somb:randoms/random2

execute if score rng# Random2 matches 1 run scoreboard players set @s bomb_level 1
execute if score rng# Random2 matches 2 run scoreboard players set @s bomb_level 2
execute if score rng# Random2 matches 3 run scoreboard players set @s bomb_level 3
execute if score rng# Random2 matches 4 run scoreboard players set @s bomb_level 4
execute if score rng# Random2 matches 5 run scoreboard players set @s bomb_level 5
execute if score rng# Random2 matches 6 run scoreboard players set @s bomb_level 6
execute if score rng# Random2 matches 7 run scoreboard players set @s bomb_level 7
execute if score rng# Random2 matches 8 run scoreboard players set @s bomb_level 8
execute if score rng# Random2 matches 9 run scoreboard players set @s bomb_level 9
execute if score rng# Random2 matches 10 run scoreboard players set @s bomb_level 10
execute as @s run tag @s add Level_add
scoreboard players reset rng# Random2
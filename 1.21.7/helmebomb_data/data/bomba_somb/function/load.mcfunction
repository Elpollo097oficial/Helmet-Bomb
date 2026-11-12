scoreboard objectives add Random dummy
scoreboard objectives add Random2 dummy
team add player_bomb
team modify player_bomb color red
scoreboard objectives add bomb_level dummy

title @a times 20 60 20

execute as @a at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 0.1
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 50 force
execute as @a at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0.01 1 force
title @a title {"text":"☠ Helmet Bomb ☠","color":"red"}
title @a subtitle {"text":"By: Elpollo097","color":"dark_gray","italic":true}
title @a actionbar {"text":"🔥 Version: 1.21.7 🔥","color":"gold","bold":true}

title @a times 10 70 20

scoreboard objectives add Random dummy
scoreboard objectives add Random2 dummy
scoreboard objectives add check dummy
team add player_bomb
team modify player_bomb color red
gamerule send_command_feedback false
scoreboard objectives add bomb_level dummy
scoreboard objectives add total.value dummy
scoreboard objectives modify total.value displayname "\u00A76\u00A7lLevels of Explosions"
scoreboard players add check check 0
execute if score check check matches ..1 run scoreboard players set Min total.value 1
execute if score check check matches ..1 run scoreboard players set Max total.value 10
execute if score check check matches ..1 run scoreboard players set check check 2
#presentation of the datpack
title @a times 20 60 20

execute as @a at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 0.1
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 50 force
execute as @a at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0.01 1 force
title @a title {"text":"☠ Helmet Bomb ☠","color":"red"}
title @a subtitle {"text":"By: Elpollo097","color":"dark_gray","italic":true}
title @a actionbar {"text":"🔥 Version: 1.21.11 🔥","color":"gold","bold":true}

title @a times 10 70 20
tellraw @a ["\n ",{"text":"⚠ Helmet Bomb Configuration ⚠","color":"gold","bold":true},"\n",{"text":"Click to open the bomb helmet settings menu","color":"gray","italic":true},"\n",{"text":"[Activate]","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"function bomba_somb:config/menu"}},"\n "]
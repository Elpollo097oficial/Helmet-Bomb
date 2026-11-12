#Player with helmet
execute as @e[type=#bomba_somb:player_bomb] at @s run tag @s add player_bomb
#entity
execute as @e[type=#minecraft:zombies] at @s run tag @s add LIST_LEVEL
execute as @e[type=minecraft:skeleton] at @s run tag @s add LIST_LEVEL
execute as @e[type=minecraft:wither_skeleton] at @s run tag @s add LIST_LEVEL
execute as @e[type=minecraft:vindicator] at @s run tag @s add LIST_LEVEL
execute as @e[type=minecraft:evoker] at @s run tag @s add LIST_LEVEL
execute as @e[type=minecraft:pillager] at @s run tag @s add LIST_LEVEL

execute as @a if predicate bomba_somb:sombrero_bomba run tag @s add Sombrero_tnt_on
execute as @a unless predicate bomba_somb:sombrero_bomba run tag @s remove Sombrero_tnt_on

execute as @e[tag=LIST_LEVEL,tag=!PolloSombreTNT_desactive,tag=PolloSombreTNT_activate,tag=!Level_add] at @s run function bomba_somb:randoms/setvalue
execute as @e[tag=LIST_LEVEL,tag=!PolloSombreTNT_desactive,tag=!PolloSombreTNT_activate] at @s run function bomba_somb:randoms/ejecutar

execute as @e[tag=LIST_LEVEL,tag=PolloSombreTNT_activate,tag=!Item_ADD] at @s run item replace entity @s weapon.mainhand with tnt[enchantments={binding_curse:1}] 1
execute as @e[tag=LIST_LEVEL,tag=PolloSombreTNT_activate,tag=!Item_ADD] at @s run item replace entity @s weapon.offhand with tnt[enchantments={binding_curse:1}] 1
execute as @e[tag=LIST_LEVEL,tag=PolloSombreTNT_activate,tag=!Item_ADD] at @s run item replace entity @s armor.head with stick[item_model="template:sombrero_bomba",enchantments={binding_curse:1}] 1

execute as @e[tag=LIST_LEVEL,tag=PolloSombreTNT_activate] at @s run tag @s add Item_ADD

#glowing
execute as @e[type=player,tag=Sombrero_tnt_on] at @s run execute as @e[distance=..10,sort=nearest,tag=player_bomb] at @s run team join player_bomb @s
execute as @e[type=player,tag=Sombrero_tnt_on] at @s run execute as @e[distance=..10,sort=nearest,tag=player_bomb] at @s run effect give @s glowing 1 1 true
#player explo
execute as @e[tag=player_bomb] at @s run execute as @e[type=player,distance=..10,sort=nearest,tag=Sombrero_tnt_on] at @s run title @s actionbar {"color":"red","fallback":"Get a little closer to the mob","translate":"text.2"}
execute as @e[tag=player_bomb] at @s run execute as @e[type=player,distance=..3,sort=nearest,tag=Sombrero_tnt_on] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:10,ignited:1}
#particle entity/player
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..5,sort=nearest,tag=PolloSombreTNT_activate] at @s run particle minecraft:flame ~ ~2.5 ~ 0 0 0 0 1 force
execute as @e[tag=player_bomb] at @s run execute as @e[type=player,distance=..10,sort=nearest,tag=Sombrero_tnt_on] at @s run particle minecraft:flame ~ ~2 ~ 0 0 0 0 1 force

#Explosion +
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=1..}] run execute store result storage bomba:creeper c int 1 run scoreboard players get @s bomb_level
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=1..}] run function bomba_somb:creeper/setcreeper with storage bomba:creeper

#Explosion -
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..10,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=..0}] run function bomba_somb:creeper/settroll
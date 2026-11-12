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

execute as @e[tag=LIST_LEVEL,tag=!PolloSombreTNT_desactive,tag=PolloSombreTNT_activate,tag=!Level_add] at @s run function bomba_somb:randoms/levels
execute as @e[tag=LIST_LEVEL,tag=!PolloSombreTNT_desactive,tag=!PolloSombreTNT_activate] at @s run function bomba_somb:randoms/ejecutar
execute as @e[tag=LIST_LEVEL,tag=PolloSombreTNT_activate] at @s run item replace entity @s armor.head with stick[item_model="template:sombrero_bomba"] 1
execute as @e[tag=LIST_LEVEL,tag=PolloSombreTNT_activate] at @s run item replace entity @s weapon with air 1

#glowing
execute as @e[type=player,tag=Sombrero_tnt_on] at @s run execute as @e[distance=..10,sort=nearest,tag=player_bomb] at @s run team join player_bomb @s
execute as @e[type=player,tag=Sombrero_tnt_on] at @s run execute as @e[distance=..10,sort=nearest,tag=player_bomb] at @s run effect give @s glowing 1 1 true
#player explo
execute as @e[tag=player_bomb] at @s run execute as @e[type=player,distance=..10,sort=nearest,tag=Sombrero_tnt_on] at @s run title @s actionbar {"color":"red","fallback":"Get a little closer to the mob","translate":"text.2"}
execute as @e[tag=player_bomb] at @s run execute as @e[type=player,distance=..3,sort=nearest,tag=Sombrero_tnt_on] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:10,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..10,sort=nearest,tag=PolloSombreTNT_activate] at @s run item replace entity @s weapon with air 1
#particle entity/player
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..5,sort=nearest,tag=PolloSombreTNT_activate] at @s run particle minecraft:flame ~ ~2.5 ~ 0 0 0 0 1 force
execute as @e[tag=player_bomb] at @s run execute as @e[type=player,distance=..10,sort=nearest,tag=Sombrero_tnt_on] at @s run particle minecraft:flame ~ ~2 ~ 0 0 0 0 1 force

#Level 1-10
execute as @e if score @s bomb_level matches 1 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 1"}]}
execute as @e if score @s bomb_level matches 2 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 2"}]}
execute as @e if score @s bomb_level matches 3 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 3"}]}
execute as @e if score @s bomb_level matches 4 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 4"}]}
execute as @e if score @s bomb_level matches 5 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 5"}]}
execute as @e if score @s bomb_level matches 6 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 6"}]}
execute as @e if score @s bomb_level matches 7 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 7"}]}
execute as @e if score @s bomb_level matches 8 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 8"}]}
execute as @e if score @s bomb_level matches 9 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 9"}]}
execute as @e if score @s bomb_level matches 10 run data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" 9"}]}

#Explosion
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=1}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=2}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=3}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=4}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=5}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:5,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=6}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:6,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=7}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:7,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=8}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:8,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=9}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:9,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate,scores={bomb_level=10}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:10,ignited:1}
execute as @e[type=player] at @s run execute as @e[tag=LIST_LEVEL,distance=..2,sort=nearest,tag=PolloSombreTNT_activate] run kill @s
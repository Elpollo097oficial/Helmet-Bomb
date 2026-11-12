$scoreboard players set @s bomb_level $(n)
$data merge entity @s {CustomNameVisible:1b,CustomName:[{"bold":true,"translate":"text.3"},{"bold":true,"color":"yellow","text":" $(n)"}]}
execute as @s run tag @s add Level_add
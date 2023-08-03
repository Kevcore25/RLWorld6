# OVERCRIT FUNCTION
# Kevcore 06/26/2023


execute if score @p critchance matches 201.. run tag @p add poc200
execute if entity @p[tag=poc200] run scoreboard players remove @p critchance 200
execute if entity @p[tag=poc200] if score @p critchance > @p random100 run scoreboard players operation @s physicalDMG *= 4 intnumbers
execute if entity @p[tag=poc200] if score @p critchance > @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FF1100"}',Tags:[ReactionText]}
execute if entity @p[tag=poc200] if score @p critchance <= @p random100 run scoreboard players operation @s physicalDMG *= 3 intnumbers
execute if entity @p[tag=poc200] if score @p critchance <= @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFAA00"}',Tags:[ReactionText]}


execute if score @p critchance matches 101.. run tag @p[tag=!poc200] add poc100
execute if entity @p[tag=poc100] run scoreboard players remove @p critchance 100
execute if entity @p[tag=poc100] if score @p critchance > @p random100 run scoreboard players operation @s physicalDMG *= 3 intnumbers
execute if entity @p[tag=poc100] if score @p critchance > @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFAA00"}',Tags:[ReactionText]}
execute if entity @p[tag=poc100] if score @p critchance <= @p random100 run scoreboard players operation @s physicalDMG *= 2 intnumbers
execute if entity @p[tag=poc100] if score @p critchance <= @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFFF00"}',Tags:[ReactionText]}

execute if entity @p[tag=!poc100,tag=!poc100] if score @p critchance matches ..100 if score @p critchance > @p random100 run scoreboard players operation @s physicalDMG *= 2 intnumbers
execute if entity @p[tag=!poc100,tag=!poc100] if score @p critchance matches ..100 if score @p critchance > @p random100 run summon armor_stand ~ ~1.5 ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"CRITCIAL","color":"#FFFF00"}',Tags:[ReactionText]}
tag @p remove poc100
tag @p remove poc200
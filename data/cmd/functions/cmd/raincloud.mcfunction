tag @e[type=armor_stand] add player

particle cloud ~ ~ ~ 2.5 0.5 2.5 0 100 normal
particle rain ~ ~-1 ~ 2.5 0.5 2.5 0 100 normal
execute positioned ~ ~-4.5 ~ run effect give @e[type=!armor_stand,distance=..5] unluck 2 0 true
scoreboard players add @s timeInSec 1
execute if entity @s[scores={timeInSec=120..}] run kill @s 
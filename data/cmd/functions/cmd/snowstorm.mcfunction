tag @e[type=armor_stand] add player

execute positioned ~ ~0.75 ~ if block ^ ^ ^0.15 air positioned ~ ~-0.75 ~ unless entity @e[type=!player,tag=!player,distance=..2,sort=nearest] run tp @s ^ ^ ^0.15

particle snowflake ~ ~ ~ 0.75 0.75 0.75 0 40 normal
execute as @e[type=!player,tag=!player,distance=..2.5,sort=nearest] run damage @s 4 magic by @p
execute as @e[type=!player,tag=!player,distance=..2.5,sort=nearest,scores={noAITime=1..}] run damage @s 9 magic by @p
scoreboard players add @e[type=!player,tag=!player,distance=..2.5,sort=nearest,scores={noAITime=1..}] noAITime 1
effect give @e[type=!player,tag=!player,distance=..2.5,sort=nearest] slowness 1 1 true
scoreboard players add @s timeInSec 1
execute if entity @s[scores={timeInSec=60..}] run kill @s 
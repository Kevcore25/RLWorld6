
execute if entity @s[scores={myrandom=0..4}] run summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b}}
execute if entity @s[scores={myrandom=0}] run summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b}}

setblock ~ ~ ~ air destroy


scoreboard players remove @s stamina. 2000
tag @s add staminachange
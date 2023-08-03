execute as @e[type=armor_stand,tag=FN] at @s run particle ash

execute as @e[type=armor_stand,tag=FN] at @s if block ~ ~1.4 ~ water run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=FN] at @s unless block ~ ~1.4 ~ water run tp @s ^ ^ ^1

execute as @e[type=armor_stand,tag=FN] at @s unless block ~ ~1.4 ~ air unless block ~ ~1.4 ~ water unless block ~ ~1 ~ #buttons run kill @s
execute as @e[type=armor_stand,tag=FN,scores={timeInSec=80..}] at @s if block ~ ~1.4 ~ water run tp @s ~ ~-0.4 ~ 
execute as @e[type=armor_stand,tag=FN,scores={timeInSec=51..}] at @s if block ~ ~1.4 ~ water run tp @s ~ ~-0.35 ~ 
execute as @e[type=armor_stand,tag=FN,scores={timeInSec=25..50}] at @s if block ~ ~1.4 ~ water run tp @s ~ ~-0.25 ~ 
execute as @e[type=armor_stand,tag=FN,scores={timeInSec=..24}] at @s if block ~ ~1.4 ~ water run tp @s ~ ~-0.2 ~ 

execute as @e[type=armor_stand,tag=FN,scores={timeInSec=300..}] at @s run tp @s ~ ~-0.2 ~ 
execute as @e[type=armor_stand,tag=FN,scores={timeInSec=151..}] at @s run tp @s ~ ~-0.2 ~ 
execute as @e[type=armor_stand,tag=FN,scores={timeInSec=85..141}] at @s run tp @s ~ ~-0.1 ~ 

execute as @e[type=armor_stand,tag=FN] at @s if block ~ ~1.4 ~ water run scoreboard players add @s timeInSec 3
execute as @e[type=armor_stand,tag=FN] at @s unless block ~ ~1.4 ~ water run scoreboard players add @s timeInSec 10

execute as @e[type=armor_stand,tag=FN,scores={timeInSec=1000..}] run kill @s 

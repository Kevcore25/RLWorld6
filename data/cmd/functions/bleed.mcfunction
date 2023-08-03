
scoreboard players remove @s bleedtime 1 

scoreboard players set @e[type=armor_stand,scores={tempRandomgen=0}] bleedtemp 15
scoreboard players set @e[type=armor_stand,scores={tempRandomgen=1}] bleedtemp 10

tag @s[scores={bleedtime=41}] add bleedyes
tag @s[scores={bleedtime=21}] add bleedyes
tag @s[scores={bleedtime=1}] add bleedyes


scoreboard players operation @s[tag=bleedyes] bleedtemp = @e[type=armor_stand,scores={tempRandomgen=0},limit=1] bleedtemp
scoreboard players operation @s[tag=bleedyes] bleedtemp *= @p[distance=..24] ARatk
scoreboard players operation @s[tag=bleedyes] bleedtemp += @e[type=armor_stand,scores={tempRandomgen=1},limit=1] bleedtemp


damage @s[tag=bleedyes,scores={bleedtemp=..10}] 1 cactus
damage @s[tag=bleedyes,scores={bleedtemp=25}] 2.5 cactus
damage @s[tag=bleedyes,scores={bleedtemp=40}] 4 cactus
damage @s[tag=bleedyes,scores={bleedtemp=55}] 5.5 cactus 
damage @s[tag=bleedyes,scores={bleedtemp=70}] 7 cactus
damage @s[tag=bleedyes,scores={bleedtemp=85}] 8.5 cactus
damage @s[tag=bleedyes,scores={bleedtemp=100..}] 10 cactus

damage @s[tag=bleedyes] 1 cactus

tag @s remove bleedyes
# 15 x ATK + 10
#1, 2.5, 4, 5.5, 7, 8.5, 10).
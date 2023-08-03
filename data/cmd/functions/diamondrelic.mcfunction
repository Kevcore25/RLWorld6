scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen

#remove pickup relic
clear @s diamond_horse_armor{GetRelic:1}

tag @s remove SREClaimed

execute if entity @s[scores={myrandom=0..6},tag=!SREClaimed] at @s run function cmd:diamondrelic3
execute if entity @s[scores={myrandom=7..9},tag=!SREClaimed] at @s run function cmd:diamondrelic4

tag @s remove SREClaimed
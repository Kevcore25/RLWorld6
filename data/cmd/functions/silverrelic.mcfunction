scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen

#remove pickup relic
clear @s iron_horse_armor{GetRelic:1}

tag @s remove SREClaimed

execute if entity @s[scores={myrandom=0..5},tag=!SREClaimed] run function cmd:silverrelic1

execute if entity @s[scores={myrandom=6..9},tag=!SREClaimed] run function cmd:silverrelic2

tag @s remove SREClaimed
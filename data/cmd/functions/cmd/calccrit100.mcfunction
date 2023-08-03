scoreboard players operation @s random100 = @s myrandom
scoreboard players operation @s random100 *= 10 intnumbers
scoreboard players operation @s myrandom = @e[type=armor_stand,tag=randomGen,limit=1,sort=random] tempRandomgen
scoreboard players operation @s random100 += @s myrandom
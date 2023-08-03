execute if entity @s[scores={respawn.=1,xp=..150},tag=!cominghome] run xp add @s 100 levels
execute if entity @s[scores={respawn.=1,xp=501..},tag=!cominghome] run xp set @s 650 levels
execute if entity @s[scores={respawn.=1,xp=1001..},tag=!cominghome] run xp set @s 1150 levels
execute if entity @s[scores={respawn.=1},tag=!cominghome] run xp add @s -150 levels
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s temperature 5
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s burning 0
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s superconduct 0
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s temperature. 0
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s thirst. 0
execute if entity @s[scores={respawn.=1},tag=!cominghome] at @s run effect give @s resistance 5 255 false
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s thirst 20
execute if entity @s[scores={respawn.=1},tag=cominghome] run gamerule showDeathMessages true
execute if entity @s[scores={respawn.=1},tag=!cominghome] run scoreboard players set @s noAITime 0
execute if entity @s[scores={respawn.=1},tag=cominghome] run tag @s remove cominghome

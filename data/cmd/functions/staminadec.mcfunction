execute as @s[scores={stamina.=..0}] run scoreboard players remove @s stamina 1

execute as @s[scores={stamina.=..0}] run scoreboard players add @s stamina. 1000
execute as @s[scores={stamina.=..0,ARstamina=1}] run scoreboard players add @s stamina. 200
execute as @s[scores={stamina.=..0,ARstamina=2}] run scoreboard players add @s stamina. 200
execute as @s[scores={stamina.=..0,ARstamina=3}] run scoreboard players add @s stamina. 200
execute as @s[scores={stamina.=..0,ARstamina=4..}] run scoreboard players add @s stamina. 400
execute as @s[scores={stamina.=..0}] run function cmd:staminadec
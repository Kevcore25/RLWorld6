execute at @s positioned ~2.5 ~ ~2.5 run effect give @e[distance=..2.5] bad_omen 1 0 true
scoreboard players remove @s natureplanttime 1
kill @s[scores={natureplanttime=..0}]

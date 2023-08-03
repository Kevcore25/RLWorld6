

scoreboard objectives remove quest1
scoreboard objectives remove quest2
scoreboard objectives remove quest3

scoreboard objectives remove questreconnect

scoreboard objectives add quest1 trigger


scoreboard objectives add questreconnect dummy
tellraw @a[tag=debuger] {"text":"questreload.mcfunction ran","color":"gray"}
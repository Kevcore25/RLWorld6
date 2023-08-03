scoreboard objectives add RGtemp dummy "recommended gear temp"
scoreboard objectives add RGtempC dummy "recommended gear temp count"
scoreboard objectives add RGtempC2 dummy "recommended gear temp count"

# for nether = har
#total sl= 35
#atk stats: 8
#def stats: 6
#crit rate: 150%

scoreboard players set @s RGtempC 0
scoreboard players set @s RGtemp 0


execute store result score @s RGtempC run attribute @s generic.armor get
execute store result score @s RGtempC2 run attribute @s generic.armor_toughness get
scoreboard players operation @s RGtempC += @s RGtempC2
scoreboard players add @s[scores={RGtempC=50..}] RGtemp 1


scoreboard players set @s RGtempC 0
scoreboard players operation @s RGtempC += @s combatLvl
scoreboard players operation @s RGtempC += @s axesLvl
scoreboard players operation @s RGtempC += @s pickaxesLvl
scoreboard players operation @s RGtempC += @s gatheringLvl
scoreboard players operation @s RGtempC += @s defenseLvl
scoreboard players add @s[scores={RGtempC=40..}] RGtemp 1

scoreboard players set @s RGtempC 0
scoreboard players operation @s RGtempC += @s ARatk
scoreboard players operation @s RGtempC += @s ARem
scoreboard players operation @s RGtempC += @s ARedb
scoreboard players add @s[scores={RGtempC=12..}] RGtemp 1

scoreboard players set @s RGtempC 0
scoreboard players operation @s RGtempC += @s ARhp
scoreboard players operation @s RGtempC += @s ARdef
scoreboard players operation @s RGtempC += @s ARemres
scoreboard players add @s[scores={RGtempC=12..}] RGtemp 1


function cmd:critchance
scoreboard players add @s[scores={critchance=150..}] RGtemp 1

tellraw @s[scores={RGtemp=..3}] {"text": "\nNOTICE: (beta test)\nYour stats are below the recommended stat for this area","color": "red"}
tellraw @s[scores={RGtemp=4..}] {"text": "\nNOTICE: (beta test)\nYour stats qualify for the recommended stat for this area","color": "green"}

tellraw @s[scores={RGtemp=0}] {"text": "Difficulty: Impossible\n","color": "dark_red"}
tellraw @s[scores={RGtemp=1}] {"text": "Difficulty: Insanely difficult\n","color": "red"}
tellraw @s[scores={RGtemp=2}] {"text": "Difficulty: Very difficult\n","color": "gold"}
tellraw @s[scores={RGtemp=3}] {"text": "Difficulty: Hard\n","color": "yellow"}
tellraw @s[scores={RGtemp=4}] {"text": "Difficulty: Normal\n","color": "yellow"}
tellraw @s[scores={RGtemp=5}] {"text": "Difficulty: Easier than normal\n","color": "green"}

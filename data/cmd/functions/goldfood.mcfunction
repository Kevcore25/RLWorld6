execute if entity @s[scores={useGarrot=1..}] run effect clear @s absorption
execute if entity @s[scores={useGarrot=1..,firstaid=..5}] run effect clear @s regeneration
execute if entity @s[scores={useGarrot=1..,firstaidLvl=6..}] run effect give @s regeneration 10 4 false
execute if entity @s[scores={useGarrot=1..,firstaidLvl=6..}] run effect give @s absorption 300 1 false
execute if entity @s[scores={useGarrot=1..}] run scoreboard players add @s thirst 6
execute if entity @s[scores={useGarrot=1..,firstaidLvl=..5}] run tellraw @s {"text": "You require a First Aid skill level of 6 to receive healing for this item!","color": "red"}
#execute if entity @s[scores={useGarrot=1..,firstaidLvl=..5}] run give @s golden_carrot

scoreboard players set @s useGarrot 0
execute if entity @s[scores={useGapple=1..,firstaidLvl=4..}] run effect clear @s absorption
execute if entity @s[scores={useGapple=1..,firstaidLvl=4..}] run effect give @s regeneration 5 2 false
execute if entity @s[scores={useGapple=1..}] run scoreboard players add @s thirst 3
execute if entity @s[scores={useGapple=1..,firstaidLvl=..3}] run tellraw @s {"text": "You require a First Aid skill level of 4 to receive healing for this item!","color": "red"}


scoreboard players set @s useGapple 0

execute positioned 1000 200 1000 if entity @s[distance=..36,scores={useGGapple=1..}] run tellraw @s {"text":"You can't use that item here!"}
execute positioned 1000 200 1000 if entity @s[distance=..36,scores={useGGapple=1..}] run give @s enchanted_golden_apple
execute positioned 1000 200 1000 if entity @s[distance=..36,scores={useGGapple=1..}] run scoreboard players set @s useGGapple 0

execute if entity @s[scores={useGGapple=1..}] run effect clear @s absorption
execute if entity @s[scores={useGGapple=1..}] run effect give @s regeneration 30 4 false
execute if entity @s[scores={useGGapple=1..}] run effect give @s health_boost 300 2 false
execute if entity @s[scores={useGGapple=1..}] run effect give @s absorption 300 4 false
execute if entity @s[scores={useGGapple=1..}] run effect give @s strength 30 1 false
execute if entity @s[scores={useGGapple=1..}] run effect give @s luck 300 0 false
#execute if entity @s[scores={useGGapple=1..}] run effect give @s unluck 300 0 false

execute if entity @s[scores={useGGapple=1..}] at @s run fill ~5 ~5 ~5 ~-5 ~ ~-5 glass replace air
execute if entity @s[scores={useGGapple=1..}] at @s run fill ~5 ~5 ~5 ~-5 ~ ~-5 air destroy
execute if entity @s[scores={useGGapple=1..}] at @s run summon iron_golem ~ ~ ~ {PlayerCreated:1}

execute if entity @s[scores={useGGapple=1..}] run scoreboard players add @s thirst 20
scoreboard players set @s useGGapple 0

effect give @s[scores={firstaidLvl=9..}] health_boost 10 0
scoreboard players add @s[scores={firstaidLvl=9..}] shields 10
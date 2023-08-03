# execute if entity @s[scores={shields=..999,ARem=0},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+50 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=0},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 50
# execute if entity @s[scores={shields=..999,ARem=1},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+60 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=1},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 60
# execute if entity @s[scores={shields=..999,ARem=2},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+70 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=2},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 70
# execute if entity @s[scores={shields=..999,ARem=3},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+80 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=3},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 80
# execute if entity @s[scores={shields=..999,ARem=4},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+90 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=4},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 90
# execute if entity @s[scores={shields=..999,ARem=5},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+100 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=5},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 100
# execute if entity @s[scores={shields=..999,ARem=6},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+110 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=6},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 110
# execute if entity @s[scores={shields=..999,ARem=7},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+120 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=7},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 120
# execute if entity @s[scores={shields=..999,ARem=8..},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run tellraw @s {"text": "+130 Shields","color": "yellow"}
# execute if entity @s[scores={shields=..999,ARem=8..},nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run scoreboard players add @s shields 130

# EM Increase 
scoreboard players set @s shields 10
scoreboard players operation @s shields *= @s ARem
# BASE 
scoreboard players add @s shields 100

tellraw @s [{"text": "+ ","color": "yellow"},{"score":{"name": "@s","objective": "shields"},"color": "yellow"},{"text": " Shields","color": "yellow"}]
## Start die msg

# Refer to the KCMC Documentation for more information

# Safe precautions...
scoreboard players add @s currentStatus 0


execute if block ~ ~ ~ lava run scoreboard players set @s currentStatus 100

execute if entity @s[scores={currentStatus=0,myrandom=0..1}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " died", "color": "red"}]
execute if entity @s[scores={currentStatus=0,myrandom=2..3}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " passed away", "color": "red"}]
execute if entity @s[scores={currentStatus=0,myrandom=4..5}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " took the L", "color": "red"}]
execute if entity @s[scores={currentStatus=0,myrandom=6..7}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " went on to the next life", "color": "red"}]
execute if entity @s[scores={currentStatus=0,myrandom=8..9}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was killed", "color": "red"}]

execute unless entity @s[scores={currentStatus=0}] unless entity @s[scores={currentStatus=10..20}] unless entity @s[scores={currentStatus=-4..-1}] unless entity @s[scores={currentStatus=100..110}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " died with ID ", "color": "red"},{"score":{"name": "@s","objective": "currentStatus"}}]

# imagine inefficient code, this is average kevcore programmer

# from reactions
execute if entity @s[scores={currentStatus=10}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " melted away", "color": "red"}]
execute if entity @s[scores={currentStatus=11}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " evaporated", "color": "red"}]
execute if entity @s[scores={currentStatus=12}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " froze to death", "color": "red"}]
execute if entity @s[scores={currentStatus=13,myrandom=5..9}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " experienced high concentrations of Radiation", "color": "red"}]
execute if entity @s[scores={currentStatus=13,myrandom=0..4}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " radiated away", "color": "red"}]
execute if entity @s[scores={currentStatus=14}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " lost resistance and died", "color": "red"}]
execute if entity @s[scores={currentStatus=15}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " electrocuted to death", "color": "red"}]
execute if entity @s[scores={currentStatus=16}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " died", "color": "red"}]
execute if entity @s[scores={currentStatus=17}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was snapped like a leaf", "color": "red"}]
execute if entity @s[scores={currentStatus=18}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " couldn't resist plant explosions", "color": "red"}]
execute if entity @s[scores={currentStatus=19}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " overgrew too much", "color": "red"}]
execute if entity @s[scores={currentStatus=20}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was blasted to death", "color": "red"}]

# from physicals
execute if entity @s[scores={currentStatus=-1}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " bleeded to death", "color": "red"}]
execute if entity @s[scores={currentStatus=-2}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was shattered into a million pieces", "color": "red"}]
execute if entity @s[scores={currentStatus=-3}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was being shattered", "color": "red"}]
execute if entity @s[scores={currentStatus=-4}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " fell off", "color": "red"}]

# from other features
execute if entity @s[scores={currentStatus=100}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " melted away in Lava", "color": "red"}]
execute if entity @s[scores={currentStatus=101}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " experienced Hyperthermia", "color": "red"}]
execute if entity @s[scores={currentStatus=102}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " experienced Hypothermia", "color": "red"}]
execute if entity @s[scores={currentStatus=103}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " drowned", "color": "red"}]
execute if entity @s[scores={currentStatus=104}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was struck by lightning", "color": "red"}]
execute if entity @s[scores={currentStatus=105}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " died", "color": "red"}]
execute if entity @s[scores={currentStatus=106}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " exploded in dragon's breath", "color": "red"}]
execute if entity @s[scores={currentStatus=107}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " turned into ice by an Ice Dragon", "color": "red"}]
execute if entity @s[scores={currentStatus=108}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " turned into ash by a Fire Dragon", "color": "red"}]
execute if entity @s[scores={currentStatus=109}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was electrocuded by an Lightning Dragon", "color": "red"}]
execute if entity @s[scores={currentStatus=110}] run tellraw @a [{"selector":"@s","color": "green"},{"text": " was electrocuded by an Lightning Dragon", "color": "red"}]

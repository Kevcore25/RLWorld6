execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:firework_star"}]}] positioned ~ ~0.35 ~ run summon shulker_bullet ^ ^ ^1 {Tags:["rockbullet"]}

## NO WALK OR RUN DETECTION
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0}] at @s[scores={rocktimer=0}] store result score @s px run data get entity @s Pos[0] 80
# When JUMP + Q is pressed at the same time, rock should multiply its Y axis by 1.5x
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0,rockJump=1..}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 120
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0,rockJump=0}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 80
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0}] at @s[scores={rocktimer=0}] store result score @s pz run data get entity @s Pos[2] 80
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0}] at @s[scores={rocktimer=0}] store result score @s ax run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[0] 80
# rock should multiply its Y axis by 1.4x
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0,rockJump=1..}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[1] 120
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0,rockJump=0}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[1] 80
execute if entity @s[scores={throwRock=1,rockWalk=0,rockRun=0}] at @s[scores={rocktimer=0}] store result score @s az run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[2] 80

## WALKING DETECTION
execute if entity @s[scores={throwRock=1,rockWalk=1..}] at @s[scores={rocktimer=0}] store result score @s px run data get entity @s Pos[0] 92
# When W + JUMP + Q is pressed at the same time, rock should multiply its Y axis by 1.75x from its starting (92)
execute if entity @s[scores={throwRock=1,rockWalk=1..,rockJump=1..}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 161
execute if entity @s[scores={throwRock=1,rockWalk=1..,rockJump=0}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 92
execute if entity @s[scores={throwRock=1,rockWalk=1..}] at @s[scores={rocktimer=0}] store result score @s pz run data get entity @s Pos[2] 92
execute if entity @s[scores={throwRock=1,rockWalk=1..}] at @s[scores={rocktimer=0}] store result score @s ax run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[0] 92
# rock should multiply its Y axis by 1.5x
execute if entity @s[scores={throwRock=1,rockWalk=1..,rockJump=1..}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[1] 161
execute if entity @s[scores={throwRock=1,rockWalk=1..,rockJump=0}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[1] 92
execute if entity @s[scores={throwRock=1,rockWalk=1..}] at @s[scores={rocktimer=0}] store result score @s az run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[2] 92

## RUNNING DETECTION
execute if entity @s[scores={throwRock=1,rockRun=1..}] at @s[scores={rocktimer=0}] store result score @s px run data get entity @s Pos[0] 100
# When JUMP + Q is pressed at the same time while sprinting, rock should multiply its Y axis by 2x from its starting (100)
execute if entity @s[scores={throwRock=1,rockRun=1..,rockJump=1..}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 150
execute if entity @s[scores={throwRock=1,rockRun=1..,rockJump=0}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 100
execute if entity @s[scores={throwRock=1,rockRun=1..}] at @s[scores={rocktimer=0}] store result score @s pz run data get entity @s Pos[2] 100
execute if entity @s[scores={throwRock=1,rockRun=1..}] at @s[scores={rocktimer=0}] store result score @s ax run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[0] 100
# rock should multiply its Y axis by 2.0x
execute if entity @s[scores={throwRock=1,rockRun=1..,rockJump=1..}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[1] 150
execute if entity @s[scores={throwRock=1,rockRun=1..,rockJump=0}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[1] 100
execute if entity @s[scores={throwRock=1,rockRun=1..}] at @s[scores={rocktimer=0}] store result score @s az run data get entity @e[tag=rockbullet,limit=1,sort=nearest] Pos[2] 100

#tellraw @a  ["",{"text":"RUN: "},{"score":{"name":"m__c","objective":"rockRun"}},{"text":": "},{"score":{"name":"m__c","objective":"rockWalk"}},{"text":"jump: "},{"score":{"name":"m__c","objective":"rockJump"}}]

scoreboard players set @a rockJump 0
scoreboard players set @a rockRun 0
scoreboard players set @a rockWalk 0

execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ax -= @s px
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ay -= @s py
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s az -= @s pz

execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] store result entity @e[tag=rockbullet,limit=1,sort=nearest] Motion[0] double 0.01 run scoreboard players get @s ax
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] store result entity @e[tag=rockbullet,limit=1,sort=nearest] Motion[1] double 0.01 run scoreboard players get @s ay
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] store result entity @e[tag=rockbullet,limit=1,sort=nearest] Motion[2] double 0.01 run scoreboard players get @s az
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] run data modify entity @e[tag=rockbullet,limit=1,sort=nearest] Owner set from entity @s UUID
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0},gamemode=!creative] run clear @s firework_star 1
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0}] run scoreboard players remove @s stamina. 1750
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0},gamemode=!creative] run tag @s add staminachange
execute if entity @s[scores={throwRock=1},nbt={Inventory:[{id:"minecraft:firework_star"}]}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:firework_star"}},limit=1,distance=..5,sort=nearest]
execute if entity @s[scores={throwRock=1},nbt={Inventory:[{id:"minecraft:firework_star"}]}] at @s[scores={rocktimer=1..},gamemode=!creative] run give @s firework_star{display:{Name:'[{"text":"Rock","italic": false}]'}} 1
execute if entity @s[scores={throwRock=1},nbt={Inventory:[{id:"minecraft:firework_star"}]}] at @s[scores={rocktimer=0},gamemode=creative] run give @s firework_star{display:{Name:'[{"text":"Rock","italic": false}]'}} 1

#execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=1..}] run tellraw @s {"text":"Rock throwing on cooldown!","color": "red"}
# SET TIMER OF ROCK
execute if entity @s[scores={throwRock=1},nbt={Inventory:[{id:"minecraft:firework_star"}]}] at @s[scores={rocktimer=0},gamemode=!creative] run scoreboard players set @s rocktimer 10

scoreboard players remove @a[scores={rocktimer=1..}] rocktimer 1

#execute if entity @s[scores={useCOAS=1},nbt={SelectedItem:{tag:{display:{Lore:['[{"text":"Rock Launcher","italic":false,"color":"aqua"}]']}}}}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:firework_star"}]}] positioned ~ ~0.35 ~ run scoreboard players set @s rocktimer 10
scoreboard players set @a throwRock 0








execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] positioned ~ ~0.25 ~ run summon arrow ^ ^ ^1 {Tags:["hardrockbullet"]}

execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s px run data get entity @s Pos[0] 250
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 250
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s pz run data get entity @s Pos[2] 250
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s ax run data get entity @e[tag=hardrockbullet,limit=1,sort=nearest] Pos[0] 250
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s ay run data get entity @e[tag=hardrockbullet,limit=1,sort=nearest] Pos[1] 250
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s az run data get entity @e[tag=hardrockbullet,limit=1,sort=nearest] Pos[2] 250


execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ax -= @s px
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ay -= @s py
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s az -= @s pz

execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result entity @e[tag=hardrockbullet,limit=1,sort=nearest] Motion[0] double 0.01 run scoreboard players get @s ax
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result entity @e[tag=hardrockbullet,limit=1,sort=nearest] Motion[1] double 0.01 run scoreboard players get @s ay
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result entity @e[tag=hardrockbullet,limit=1,sort=nearest] Motion[2] double 0.01 run scoreboard players get @s az
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run data modify entity @e[tag=hardrockbullet,limit=1,sort=nearest] Owner set from entity @s UUID

execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] positioned ~ ~0.25 ~ run summon shulker_bullet ^ ^ ^1 {Tags:["hlrockbullet"]}
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s px run data get entity @s Pos[0] 240
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 240
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s pz run data get entity @s Pos[2] 240
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s ax run execute as @e[tag=hlrockbullet,limit=1,sort=nearest] run data get entity @s Pos[0] 240
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s ay run execute as @e[tag=hlrockbullet,limit=1,sort=nearest] run data get entity @s Pos[1] 240
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s az run execute as @e[tag=hlrockbullet,limit=1,sort=nearest] run data get entity @s Pos[2] 240
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ax -= @s px
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ay -= @s py
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s az -= @s pz
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] as @e[tag=hlrockbullet,limit=1,sort=nearest] store result entity @s Motion[0] double 0.01 run scoreboard players get @p ax
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] as @e[tag=hlrockbullet,limit=1,sort=nearest] store result entity @s Motion[1] double 0.01 run scoreboard players get @p ay
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] as @e[tag=hlrockbullet,limit=1,sort=nearest] store result entity @s Motion[2] double 0.01 run scoreboard players get @p az
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run execute as @e[tag=hlrockbullet,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p UUID


# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] positioned ~ ~0.1 ~ run summon shulker_bullet ^ ^ ^1 {Tags:["hrrockbullet"]}
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s px run data get entity @s Pos[0] 250
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s py run data get entity @s Pos[1] 250
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s pz run data get entity @s Pos[2] 250
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s ax run execute as @e[tag=hrrockbullet,limit=1,sort=nearest] run data get entity @s Pos[0] 250
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s ay run execute as @e[tag=hrrockbullet,limit=1,sort=nearest] run data get entity @s Pos[1] 250
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] store result score @s az run execute as @e[tag=hrrockbullet,limit=1,sort=nearest] run data get entity @s Pos[2] 250
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ax -= @s px
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s ay -= @s py
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players operation @s az -= @s pz
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] as @e[tag=hrrockbullet,limit=1,sort=nearest] store result entity @s Motion[0] double 0.01 run scoreboard players get @p ax
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] as @e[tag=hrrockbullet,limit=1,sort=nearest] store result entity @s Motion[1] double 0.01 run scoreboard players get @p ay
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] as @e[tag=hrrockbullet,limit=1,sort=nearest] store result entity @s Motion[2] double 0.01 run scoreboard players get @p az
# execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run execute as @e[tag=hrrockbullet,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p UUID



execute as @a[tag=!spectating] if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0}] run scoreboard players remove @s stamina. 5500
execute as @a[tag=!spectating] if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0},gamemode=!creative] run tag @s add staminachange

execute as @a[tag=!spectating] if entity @s[scores={throwHardrock=1},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}},limit=1,distance=..5,sort=nearest]
execute as @a[tag=!spectating] if entity @s[scores={throwHardrock=1},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] at @s[scores={rocktimer=1..},gamemode=!creative] run give @s gray_dye{HardRock:1,display:{Name:'[{"text":"Hardened Rock","italic": false}]'}}
execute as @a[tag=!spectating] if entity @s[scores={throwHardrock=1},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] at @s[scores={rocktimer=0},gamemode=creative] run give @s gray_dye{HardRock:1,display:{Name:'[{"text":"Hardened Rock","italic": false}]'}}

execute as @a[tag=!spectating] if entity @s[scores={throwHardrock=1},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] at @s[scores={rocktimer=0},gamemode=!creative] run scoreboard players set @s rocktimer 10
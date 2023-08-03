

## Basic Stamina
execute if entity @s[scores={stamina.=..0}] run function cmd:staminadec

## detecct if mob die
execute as @e[type=item,nbt={Item:{id:"minecraft:jigsaw"}}] at @s run function cmd:cmd/mobdeath

kill @e[type=item,nbt={Item:{tag:{RespawnedItem:1}}}]

## KILL
execute as @s[scores={killmob=1..}] at @s run xp add @s 7 levels
scoreboard players set @s killmob 0
## SP
# fix sculk XP drop exploit
execute as @s[scores={minesculk=1..}] run kill @e[type=experience_orb]
scoreboard players set @s[scores={minesculk=1..}] minesculk 0
# XP function
execute as @e[type=experience_orb] at @s run function cmd:xp

execute as @s[scores={mineCopper=1..}] at @s run summon experience_orb ~ ~1 ~2
scoreboard players set @s mineCopper 0


## type function
scoreboard players enable @s type
execute if entity @s[scores={type=-2147483647..2147483647}] run function cmd:type
scoreboard players set @s type -2147483648
## Cannot craft item
execute if entity @s[nbt={Inventory:[{id:"minecraft:anvil"}]}] run function cmd:cmd/cannotcraft
execute if entity @s[nbt={Inventory:[{id:"minecraft:enchanting_table"}]}] run function cmd:cmd/cannotcraft


## Rocks
execute at @s run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 stone_button[face=floor,powered=false] replace dead_bush
execute at @s[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:stone_button"}}] run data merge entity @s {Item:{id:"minecraft:firework_star",Count:2b,tag:{Rock:1,display:{Name:'[{"text":"Rock","italic": false}]'}}}}


## turn cobble into rocks
execute if entity @s[scores={mineStone=1..}] at @s positioned ~ ~2 ~ run data merge entity @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}},distance=..6,limit=1,sort=nearest] {Item:{id:"minecraft:firework_star",Count:4b,tag:{display:{Name:'[{"text":"Rock","italic": false}]'}}}}
execute if entity @s[scores={mineCobble=1..}] at @s positioned ~ ~2 ~ run data merge entity @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}},distance=..6,limit=1,sort=nearest] {Item:{id:"minecraft:firework_star",Count:4b,tag:{display:{Name:'[{"text":"Rock","italic": false}]'}}}}
scoreboard players set @s mineCobble 0
scoreboard players set @s mineStone 0
execute if entity @s[scores={mineDeepslate=1..}] at @s positioned ~ ~2 ~ run data merge entity @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate"}},distance=..6,limit=1,sort=nearest] {Item:{id:"minecraft:gray_dye",Count:1b,tag:{HardRock:1,display:{Name:'[{"text":"Hardened Rock","italic": false}]'}}}}
scoreboard players set @s mineDeepslate 0

## dodmg function. Very important in V.4+
execute as @s[scores={doADmg=1..}] run scoreboard players operation @s doDmg += @s doADmg
execute as @s[scores={doRDmg=1..}] run scoreboard players operation @s doDmg += @s doRDmg
execute as @s[scores={doDmg=1..}] at @s run function cmd:dodmg


## when dead
# Patch respawn glitch #2
execute if entity @s[scores={die.=1..},tag=!playerrespawn] at @s run summon marker ~ ~ ~ {Tags:["playerrespawn","important"]}
execute if entity @s[scores={die.=1..},tag=!playerrespawn] at @s run summon interaction ~ ~ ~ {response:true,Tags:["important","reviveuser"],CustomNameVisible:1b,width:2f,height:0.5f,CustomName:'[{"text":"-2 ♥ ","color":"red"},{"text":"Revive User","color":"green"},{"text":" (","color":"red"},{"keybind":"key.use","color":"gray"},{"text":")","color":"red"}]'}
#execute if entity @s[scores={die.=1..},tag=!playerrespawn] at @s positioned 0 0 0 run data modify entity @e[type=marker,tag=playerrespawn,limit=1,sort=nearest] Pos set from entity @s Pos

execute if entity @s[scores={die.=1..},tag=!cominghome] run tellraw @s [{"text":"Your last death coordinate: ","color":"yellow"},{"score":{"name":"@s","objective":"xpos"},"color":"green"},{"text":" ","color":"light_purple"},{"score":{"name":"@s","objective":"ypos"},"color":"green"},{"text":" ","color":"light_purple"},{"score":{"name":"@s","objective":"zpos"},"color":"green"}]

execute if entity @s[scores={die.=1..},tag=!playerrespawn] at @s run scoreboard players operation @e[type=marker,distance=..1] tpa.pid = @s tpa.pid
execute if entity @s[scores={die.=1..},tag=!playerrespawn] at @s run tag @s add playerrespawn


execute if entity @s[tag=playerrespawn] at @s run function cmd:died


# #forceload remove all 
# forceload add 100 100
# execute at @a run forceload add ~ ~

# EXPERIMENTAL FEATURE - Die messages
execute as @s[tag=!spectating,scores={die.=1..},tag=!cominghome] at @s run function cmd:diemsg
scoreboard players set @s die. 0

## Gold food
execute if entity @s[scores={useGarrot=1..}] run function cmd:goldfood
execute if entity @s[scores={useGGapple=1..}] run function cmd:goldfood
execute if entity @s[scores={useGapple=1..}] run function cmd:goldfood

## adjust Mvmt. SPD and others
execute if entity @s at @s[scores={stamina=..10}] run attribute @s generic.movement_speed base set 0.08
execute if entity @s at @s[scores={stamina=0}] run attribute @s generic.movement_speed base set 0.03
execute if entity @s at @s[scores={stamina=..4}] run effect give @s jump_boost 1 150 true

## When respawn
execute if entity @s[scores={respawn.=1}] run function cmd:cmd/respawn



## Replace with lava
execute in overworld at @s[distance=0..,tag=!spectating] run fill ~5 -63 ~5 ~-5 -58 ~-5 lava replace #base_stone_overworld
execute in the_nether at @s[distance=0..,tag=!spectating] run fill ~5 -63 ~5 ~-5 -58 ~-5 lava replace #base_stone_nether




## Water bottles (Thirst)
execute if entity @s[scores={useVoid=1..}] run scoreboard players add @s usePotion 1
execute if entity @s[scores={usePotion=1..}] run scoreboard players add @s thirst 8
execute if entity @s[scores={usePotion=1..}] run scoreboard players remove @s thirst. 100
scoreboard players remove @s[scores={useVoid=1..}] useVoid 1



## Actionbar Display
# IDS: 32: FIRE | 2: ICE | 27: WATER | 29: ELECTRIC | 31: NATURE
execute at @s[tag=!spectating] run scoreboard players remove @e[distance=..24,scores={reactionICD=1..}] reactionICD 1

execute if entity @s[tag=sldrequired,scores={noAITime=..0}] run title @s actionbar [{"text": "You don't meet the requirements to use your armor!","color": "red"}]
execute if entity @s[tag=slrequired,scores={noAITime=..0}] run title @s actionbar [{"text": "You don't meet the requirements to use this item!","color": "red"}]


execute if entity @s[tag=!slrequired,tag=!sldrequired,scores={noAITime=..0}] unless entity @s[nbt={ActiveEffects:[{Id:2}]}] unless entity @s[nbt={ActiveEffects:[{Id:27}]}] unless entity @s[nbt={ActiveEffects:[{Id:29}]}] unless entity @s[nbt={ActiveEffects:[{Id:32}]}] run title @s[tag=!debug] actionbar [{"text":"Thirst: ","color":"light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"green"},{"text":" | DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"dps"},"color":"green"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"dpsp"},"color":"green"},{"text":" | Shields: ","color":"light_purple"},{"score":{"name":"@s","objective":"shields"},"color":"green"},{"text":" | Statuses: ","color":"light_purple"},{"text": "█","color": "gray"}]
execute if entity @s[tag=!slrequired,scores={noAITime=..0},nbt={ActiveEffects:[{Id:2}]}] if entity @s[tag=!sldrequired] run title @s[tag=!debug] actionbar [{"text":"Thirst: ","color":"light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"green"},{"text":" | DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"dps"},"color":"green"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"dpsp"},"color":"green"},{"text":" | Shields: ","color":"light_purple"},{"score":{"name":"@s","objective":"shields"},"color":"green"},{"text":" | Statuses: ","color":"light_purple"},{"text": "█","color": "aqua"}]
execute if entity @s[tag=!slrequired,scores={noAITime=..0},nbt={ActiveEffects:[{Id:27}]}] if entity @s[tag=!sldrequired] run title @s[tag=!debug] actionbar [{"text":"Thirst: ","color":"light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"green"},{"text":" | DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"dps"},"color":"green"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"dpsp"},"color":"green"},{"text":" | Shields: ","color":"light_purple"},{"score":{"name":"@s","objective":"shields"},"color":"green"},{"text":" | Statuses: ","color":"light_purple"},{"text": "█","color": "blue"}]
execute if entity @s[tag=!slrequired,scores={noAITime=..0},nbt={ActiveEffects:[{Id:32}]}] if entity @s[tag=!sldrequired] run title @s[tag=!debug] actionbar [{"text":"Thirst: ","color":"light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"green"},{"text":" | DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"dps"},"color":"green"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"dpsp"},"color":"green"},{"text":" | Shields: ","color":"light_purple"},{"score":{"name":"@s","objective":"shields"},"color":"green"},{"text":" | Statuses: ","color":"light_purple"},{"text": "█","color": "gold"}]
execute if entity @s[tag=!slrequired,scores={noAITime=..0},nbt={ActiveEffects:[{Id:29}]}] if entity @s[tag=!sldrequired] run title @s[tag=!debug] actionbar [{"text":"Thirst: ","color":"light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"green"},{"text":" | DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"dps"},"color":"green"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"dpsp"},"color":"green"},{"text":" | Shields: ","color":"light_purple"},{"score":{"name":"@s","objective":"shields"},"color":"green"},{"text":" | Statuses: ","color":"light_purple"},{"text": "█","color": "yellow"}]
execute if entity @s[tag=!slrequired,scores={noAITime=..0},nbt={ActiveEffects:[{Id:31}]}] if entity @s[tag=!sldrequired] run title @s[tag=!debug] actionbar [{"text":"Thirst: ","color":"light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"green"},{"text":" | DPS: ","color":"light_purple"},{"score":{"name":"@s","objective":"dps"},"color":"green"},{"text":"+","color":"green"},{"score":{"name":"@s","objective":"dpsp"},"color":"green"},{"text":" | Shields: ","color":"light_purple"},{"score":{"name":"@s","objective":"shields"},"color":"green"},{"text":" | Statuses: ","color":"light_purple"},{"text": "█","color": "green"}]
title @s[scores={noAITime=1..,stamina=30..}] actionbar [{"text": "You're frozen! Spam ","color": "aqua"},{"keybind":"key.sneak","color": "gray","bold": false},{"text": " to unfreeze","color": "aqua"}]
title @s[scores={noAITime=1..,stamina=..29}] actionbar [{"text": "You're frozen, but you don't have enough stamina to unfreeze!","color": "aqua"}]

## Thirst extended
execute if entity @s[scores={thirst=23..}] run scoreboard players set @s thirst 22
execute if entity @s[scores={thirst.=1000..}] run scoreboard players remove @s thirst 1
execute if entity @s[scores={thirst.=1000..}] run scoreboard players remove @s thirst. 1000
scoreboard players remove @s[scores={usePotion=1..}] usePotion 1
execute if entity @s[tag=titlestamina,scores={thirst=..8}] run title @s times 0 2 10
execute if entity @s[tag=titlestamina,scores={thirst=..8},gamemode=survival] run title @s subtitle [{"text": "Thirst: ","color": "light_purple"},{"score":{"name":"@s","objective":"thirst"},"color":"red"}]

scoreboard players add @s[scores={stamina=100,stamina.=..5000},tag=!200stamina] stamina. 40
execute if entity @s[scores={staminacooldown=0}] at @s unless block ~ ~1 ~ water run scoreboard players set @s[scores={stamina=..99}] stamina. 2
execute if entity @s[scores={staminacooldown=0}] at @s unless block ~ ~1 ~ water run scoreboard players add @s[scores={stamina=..99}] stamina 1
title @s[tag=titlestamina,scores={stamina=..99},tag=!200stamina] times 0 5 5
title @s[tag=titlestamina,scores={stamina=..99},tag=!200stamina] title ""
execute if entity @s[tag=titlestamina,scores={stamina=15..99,tempElytra=100..}] run title @s[tag=!BedrockUser] subtitle [{"text":"      "},{"score":{"name":"@s","objective":"stamina"},"color":"yellow"}]
execute if entity @s[tag=titlestamina,scores={stamina=0..14,tempElytra=100..}] run title @s[tag=!BedrockUser] subtitle [{"text":"Low:   ","color":"red"},{"score":{"name":"@s","objective":"stamina"},"color":"gold"}]
execute if entity @s[tag=titlestamina,scores={stamina=15..99,tempElytra=100..}] run title @s[tag=BedrockUser] title [{"text":"      "},{"score":{"name":"@s","objective":"stamina"},"color":"yellow"}]
execute if entity @s[tag=titlestamina,scores={stamina=0..14,tempElytra=100..}] run title @s[tag=BedrockUser] title [{"text":"   ","color":"red"},{"score":{"name":"@s","objective":"stamina"},"color":"gold"}]
title @s[tag=titlestamina,scores={tempElytra=..99}] times 0 5 5
title @s[tag=titlestamina,scores={tempElytra=..99}] title ""
execute if entity @s[tag=titlestamina,scores={tempElytra=..99}] run title @s subtitle [{"text":"      "},{"score":{"name":"@s","objective":"tempElytra"},"color":"light_purple"}]
execute as @s[scores={Sneak=1..},tag=BedrockUser] at @s as @e[type=item,distance=..1] run data merge entity @s {PickupDelay:0s}

execute at @s[scores={useCOAS=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cmd:resstick
# All
execute at @s[scores={useCOAS=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function cmd:rmbdetection

execute as @s[scores={useBow=1..}] at @s run function cmd:bow
scoreboard players set @s useBow 1

execute at @s run execute at @e[type=pillager,distance=..24] as @e[type=arrow,distance=..2,tag=!done] run data merge entity @s[tag=!hardrockbullet] {damage:.5, crit:1}
execute as @e[type=arrow,tag=!done] run data merge entity @s[tag=hardrockbullet] {damage:2, crit:0}
execute as @e[type=arrow,tag=!done] run data merge entity @s[tag=!hardrockbullet] {damage:1, crit:0}
tag @e[type=arrow,tag=!done] add done
execute at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-7 powder_snow replace snow_block
scoreboard players add @s rocktimer 0
execute if entity @s[scores={stamina=..0}] run scoreboard players add @s rocktimer 1


## ROCK THROWING CREATED BY KEVCORE
execute if entity @s[scores={throwRock=1}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:firework_star"}]}] positioned ~ ~0.35 ~ run function cmd:rock
execute if entity @s[scores={throwHardrock=1}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:gray_dye"}]}] positioned ~ ~0.35 ~ run function cmd:rock
scoreboard players remove @s[scores={rocktimer=1..}] rocktimer 1
#execute if entity @s[scores={useCOAS=1},nbt={SelectedItem:{tag:{display:{Lore:['[{"text":"Rock Launcher","italic":false,"color":"aqua"}]']}}}}] at @s[scores={rocktimer=0},nbt={Inventory:[{id:"minecraft:firework_star"}]}] positioned ~ ~0.35 ~ run scoreboard players set @s rocktimer 10
scoreboard players set @s throwRock 0
scoreboard players set @s throwHardrock 0

scoreboard players set @s useCOAS 0
scoreboard players set @s useWFOAS 0

execute if entity @s[scores={staminacooldown=1..}] at @s unless block ~ ~1 ~ water run scoreboard players remove @s staminacooldown 1
execute if entity @s[scores={stamina=..-1}] run scoreboard players set @s stamina 0
#execute if entity @s[scores={stamina=101..},tag=!200stamina] run scoreboard players set @s stamina 100
#execute if entity @s[scores={stamina=201..},tag=200stamina] run scoreboard players set @s stamina 200
execute if entity @s[tag=staminachange] run scoreboard players set @s staminacooldown 20
execute if entity @s[tag=staminachange] run tag @s remove staminachange


## mine tall grass for 5E
execute as @s[scores={mineTGrass=1..},nbt={SelectedItem:{tag:{FlintSword:1}}}] run give @s tall_grass{BlockStateTag:{half:"lower"},display:{Name:'{"text":"Grass","italic": false}'}}
scoreboard players set @s mineTGrass 0
execute at @s[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:structure_block"}}] at @s unless block ~ ~-0.1 ~ air run setblock ~ ~ ~ structure_block[mode=data]
execute at @s[tag=!spectating] as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:structure_block"}}] at @s unless block ~ ~-0.1 ~ air run kill @s
## Ghast destroyer fireballs
execute at @e[type=fireball,tag=destroyer] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air destroy



scoreboard players enable @s home
execute if entity @s[scores={home=1..}] run tellraw @s {"text":"Notice: This command is an alias (shortcut) of /trigger skills set 6!","color": "yellow"}
execute if entity @s[scores={home=1..}] run trigger skills set 6
scoreboard players set @s home 0
scoreboard players enable @s armorstats
execute if entity @s[scores={armorstats=1..}] run function cmd:critchance
execute if entity @s[scores={armorstats=1..}] run function cmd:cmd/calcatk
execute if entity @s[scores={armorstats=1..}] run tellraw @s ["",{"text":"Armor Stats\nMore info ","color":"light_purple"},{"text":"here","color":"yellow","clickEvent":{"action":"open_url","value":"http://kevcore.tk:2585/others/kcmc/rlworld/armorstats.html"}},{"text":"\n\n"},{"text":"Attack: ","color":"aqua"},{"score":{"name":"@s","objective":"ARatk"},"color":"green"},{"text":"/8","color":"light_purple"},{"text":"\n"},{"text":"Health: ","color":"aqua"},{"score":{"name":"@s","objective":"ARhp"},"color":"green"},{"text":"/8","color":"light_purple"},{"text":"\n"},{"text":"Defense: ","color":"aqua"},{"score":{"name":"@s","objective":"ARdef"},"color":"green"},{"text":"/8","color":"light_purple"},{"text":"\n"},{"text":"Critical Chance (from armor): ","color":"aqua"},{"score":{"name":"@s","objective":"ARcrit"},"color":"green"},{"text":"/4","color":"light_purple"},{"text":"\n"},{"text":"Critical Chance (global): ","color":"aqua"},{"score":{"name":"@s","objective":"critchance"},"color":"green"},{"text":"%","color":"green"},{"text":"\n"},{"text":"Energy Recharge: ","color":"aqua"},{"score":{"name":"@s","objective":"ARer"},"color":"green"},{"text":"/8","color":"light_purple"},{"text":"\n"},{"text":"Elemental Mastery: ","color":"aqua"},{"score":{"name":"@s","objective":"ARem"},"color":"green"},{"text":"","color":"light_purple"},{"text":"\n"},{"text":"Elemental Resistance: ","color":"aqua"},{"score":{"name":"@s","objective":"ARemres"},"color":"green"},{"text":"/8","color":"light_purple"},{"text":"\n"},{"text":"Attack Speed: ","color":"aqua"},{"score":{"name":"@s","objective":"ARatkspd"},"color":"green"},{"text":"/8","color":"light_purple"},{"text":"\n"},{"text":"Elemental DMG Bonus: ","color":"aqua"},{"score":{"name":"@s","objective":"ARedbpercent"},"color":"green"},{"text":"%","color":"green"},{"text":"\n"},{"text":"Physical DMG Bonus: ","color":"aqua"},{"score":{"name":"@s","objective":"ARpdbpercent"},"color":"green"},{"text":"%","color":"green"},{"text":"\n"}]
scoreboard players set @s armorstats 0


scoreboard players enable @s challenges
execute unless entity @s[scores={challenges=0}] run function cmd:cmd/challenges
scoreboard players set @s challenges 0




# skills
scoreboard players enable @s skills
execute if entity @s[scores={skills=0..}] at @s run function cmd:skills
scoreboard players set @s skills -1

execute if entity @s[scores={noAITime=1..},gamemode=!spectator] at @s run summon area_effect_cloud
execute as @e[type=area_effect_cloud] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={noAITime=1..},gamemode=!spectator] at @s run tp @p @e[type=area_effect_cloud,distance=..1,limit=1]

execute if entity @s[nbt={Inventory:[{id:"minecraft:raw_gold_block",tag:{Shield:1}}]}] run function cmd:shields
execute if entity @s[scores={dmgResisted=1..}] run scoreboard players set @s shieldsTemp 0
execute if entity @s[scores={shields=1..,dmgResisted=1..}] run scoreboard players operation @s shieldsTemp = @s shields
execute if entity @s[scores={shields=1..,dmgResisted=1..}] run scoreboard players operation @s shieldsTemp -= @s dmgResisted
execute if entity @s[scores={shields=1..,dmgResisted=1..}] run scoreboard players operation @s shields -= @s dmgResisted
execute if entity @s[scores={shieldsTemp=..-1,dmgResisted=1..}] run effect clear @s resistance
execute if entity @s[scores={shieldsTemp=..-1,dmgResisted=1..}] run tellraw @s {"text": "\nYour Shields ran out!\n","color": "red"}
execute if entity @s[scores={shields=..0}] run scoreboard players set @s shields 0
#execute if entity @s[scores={shields=250..}] run scoreboard players set @s shields 250
execute if entity @s[tag=!spectating] at @s run tp @e[type=item,nbt={Item:{tag:{Shield:1}}},distance=..3] ~ ~ ~
scoreboard players set @s dmgResisted 0
clear @s raw_gold_block{Shield:1} 1

execute as @s[scores={craftBook=1..}] run give @s knowledge_book{Bandage:1,UsesLeft:10,Recipes:["bandage:four"],display:{Name:'[{"text":"Bandage (4/4)","italic":false,"color":"green"}]',Lore:['[{"text":"Restores 2 hearts when used.","italic":false,"color":"gray"}]','[{"text":"Durability: 4/4","italic":false,"color":"gray"}]']}} 1
execute as @s[scores={craftBook=1..}] run clear @s written_book 1
scoreboard players remove @s[scores={craftBook=1..}] craftBook 1
scoreboard players remove @s[scores={useBook=1..}] useBook 1



tellraw @s[scores={ultCD=1}] {"text": "Your Ultimate cooldown has ended","color": "aqua"}
scoreboard players remove @s[scores={ultCD=1..}] ultCD 1


##### AFK:CMD FUNCTION
execute as @s[scores={lv=1..}] run scoreboard players set @s Timer 0
execute as @s[scores={lv=1..}] run tellraw @s [{"text":"Did you change your version?\nRetake the test ","color":"aqua"},{"text":"here","underlined": true,"hoverEvent":{"action":"show_text","contents":[{"text":"(Helps correct things in our datapack)","color":"aqua"}]},"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger type set 111100"}}]

# tellraw @s[tag=debuger] {"text":"main.mcfunction (afk folder) ran","color":"gray"}

# execute as @s[scores={Sneak=1..}] at @s if block ~ ~-1 ~ structure_block[mode=data] run playsound minecraft:block.stone.break block @s
execute as @s[scores={Sneak=1..}] at @s if block ~ ~-1 ~ structure_block[mode=data] run summon item ~ ~ ~ {Item:{id:"minecraft:structure_block",Count:1b}}
execute as @s[scores={Sneak=1..}] at @s if block ~ ~-1 ~ structure_block[mode=data] run setblock ~ ~-1 ~ air destroy
execute as @s[scores={Sneak=1..,noAITime=1..,stamina=3..}] at @s if block ~ ~ ~ #snow run setblock ~ ~ ~ air
execute as @s[scores={Sneak=1..,noAITime=1..,stamina=3..}] at @s run effect clear @s slowness
execute as @s[scores={Sneak=1..,noAITime=1..,stamina=3..}] at @s run effect clear @s unluck
execute as @s[scores={Sneak=1..,noAITime=1..,stamina=3..},tag=unshift] at @s run scoreboard players remove @s noAITime 5

tag @s[scores={Sneak=..0}] add unshift
tag @s[scores={Sneak=1..}] remove unshift
tag @s[scores={Sneak=0}] remove waypointed


scoreboard players reset @s[scores={lv=1..}] lv
# execute as @e[type=!player] at @s if block ~ ~-1 ~ coarse_dirt run tp @s ~ ~-0.001 ~
# execute as @e[type=!player] at @s if block ~ ~-1 ~ oak_leaves run tp @s ~ ~-0.001 ~
# execute as @e[type=item] at @s if block ~ ~-1 ~ coarse_dirt run tp @s ~ ~-1 ~

#execute as @s[scores={Sneak=0}] at @s if block ~ ~ ~ air run tp @s ~ ~-0.5 ~

execute as @s[scores={Jump=1..}] run scoreboard players remove @s stamina. 5000
execute as @s[scores={Jump=1..}] run scoreboard players add @s thirst. 25
execute as @s[scores={Run=1..}] run tag @s add staminachange
execute as @s[scores={Jump=1..}] run tag @s add staminachange
execute as @s[scores={Swim=1..}] run tag @s add staminachange
execute as @s[scores={WalkWater=1..}] run tag @s add staminachange
execute as @s[scores={WalkUnderWater=1..}] run tag @s add staminachange
execute as @s[scores={Run=1..}] run scoreboard players add @s thirst. 1

execute as @s[scores={Run=1..}] run scoreboard players remove @s stamina. 101
execute as @s[scores={Swim=1..}] run scoreboard players remove @s stamina. 400


execute as @s[scores={Walk=1..}] run scoreboard players add @s thirst. 1
execute as @s[scores={Walk=1..}] run scoreboard players remove @s stamina. 1

execute as @s[scores={WalkWater=1..}] at @s if block ~ ~-1 ~ water run scoreboard players remove @s stamina. 500
execute as @s[scores={WalkWater=1..}] at @s unless block ~ ~-1 ~ water run scoreboard players remove @s stamina. 400

execute as @s[scores={WalkUnderWater=1..}] run scoreboard players remove @s stamina. 221

execute as @s[scores={flying=1..}] run tag @s add staminachange
execute as @s[scores={flying=1..}] run scoreboard players remove @s stamina. 1

execute as @s[nbt={FallFlying:1b},scores={tempElytra=..0},tag=!noelytra] run item replace block 0 0 0 container.0 from entity @s armor.chest
execute as @s[nbt={FallFlying:1b},scores={tempElytra=..0},tag=!noelytra] run item replace entity @s armor.chest with diamond_chestplate
execute as @s[nbt={FallFlying:1b},scores={tempElytra=..0},tag=!noelytra] run tag @s add noelytra

execute as @s[scores={tempElytra=1..},tag=noelytra] run item replace entity @s armor.chest from block 0 0 0 container.0
execute as @s[scores={tempElytra=1..},tag=noelytra] run item replace block 0 0 0 container.0 with air
execute as @s[scores={tempElytra=1..},tag=noelytra] run tag @s remove noelytra


#execute as @s[nbt={FallFlying:1b},scores={stamina=..0,tempElytra=..0}] run schedule function cmd:survival 1t

# /item replace entity @s armor.chest from block 0 0 0 container.0
# /item replace block 0 0 0 container.0 from entity @s armor.chest
execute as @s[scores={fall=1..209}] run scoreboard players set @s fall 0
execute as @s[scores={fall=1..}] run scoreboard players operation @s fall /= 10 intnumbers
execute as @s[scores={fall=1..}] run scoreboard players operation @s fall /= 9 intnumbers
execute as @s[scores={fall=1..}] run scoreboard players operation @s fall *= 2 intnumbers
execute as @s[scores={fall=1..}] run scoreboard players operation @s fall *= @s fall
execute as @s[scores={fall=1..,Sneak=1..}] run scoreboard players operation @s fall /= 8 intnumbers
execute as @s[scores={fall=1..}] run function cmd:falldmg
scoreboard players set @s fall 0

execute as @s[nbt=!{FallFlying:1b},scores={stamina=1..,tempElytra=..99,tempElytra.=..0}] run scoreboard players add @s tempElytra 2
execute as @s[nbt=!{FallFlying:1b},scores={tempElytra.=1..}] run scoreboard players remove @s tempElytra. 1

scoreboard players set @s[scores={Walk=1..}] Timer 0
scoreboard players set @s[scores={Fly=1..}] Timer 0
scoreboard players set @s[scores={Run=1..}] Timer 0
scoreboard players set @s[scores={Swim=1..}] Timer 0
scoreboard players set @s[scores={Jump=1..}] Timer 0
scoreboard players set @s[scores={Sneak=1..}] Timer 0
scoreboard players set @s[scores={WalkWater=1..}] Timer 0
scoreboard players set @s[scores={WalkUnderWater=1..}] Timer 0
scoreboard players set @s[scores={Minecart=1..}] Timer 0
scoreboard players set @s[scores={Row=1..}] Timer 0
scoreboard players set @s[scores={RidePig=1..}] Timer 0
scoreboard players set @s[scores={Walk=1..}] Walk 0
scoreboard players set @s[scores={Fly=1..}] Fly 0
scoreboard players set @s[scores={Run=1..}] Run 0
scoreboard players set @s[scores={Swim=1..}] Swim 0
scoreboard players set @s[scores={Jump=1..}] Jump 0
scoreboard players set @s[scores={Sneak=1..}] Sneak 0
scoreboard players set @s[scores={WalkWater=1..}] WalkWater 0
scoreboard players set @s[scores={WalkUnderWater=1..}] WalkUnderWater 0
scoreboard players set @s[scores={Minecart=1..}] Minecart 0
scoreboard players set @s[scores={Row=1..}] Row 0
scoreboard players set @s[scores={RidePig=1..}] RidePig 0
scoreboard players set @s[scores={flying=1..}] flying 0
# DMG CD
execute as @s[scores={DMGCD=1}] run function cmd:cmd/calcatk
execute as @s[scores={DMGCD=1..}] run scoreboard players remove @s DMGCD 1

execute as @s[scores={takedmg=10..,myrandom=0..2},nbt={Inventory:[{tag:{ART-Healer:1}}]}] run effect give @s regeneration 1 2
execute as @s[scores={takedmg=10..,myrandom=0..2},nbt={Inventory:[{tag:{ART-Healer:1}}]}] run tellraw @s {"text": "[ARTIFACT: Healer] You have been healed","color":"green"}
scoreboard players set @s takedmg 0



# pick up relic
execute as @s[nbt={Inventory:[{id:"minecraft:iron_horse_armor",tag:{GetRelic:1}}]}] at @s run function cmd:silverrelic
execute as @s[nbt={Inventory:[{id:"minecraft:leather_horse_armor",tag:{GetRelic:1}}]}] at @s run function cmd:bronzerelic
execute as @s[nbt={Inventory:[{id:"minecraft:golden_horse_armor",tag:{GetRelic:1}}]}] at @s run function cmd:goldrelic
execute as @s[nbt={Inventory:[{id:"minecraft:diamond_horse_armor",tag:{GetRelic:1}}]}] at @s run function cmd:diamondrelic

scoreboard players enable @s time
execute as @s[scores={time=1..}] if score min servertime matches 0..9 run tellraw @s ["",{"text":"Server time\nBased on Minecraft's Ticks\n\nTime:","color":"light_purple"},{"text":" ","color":"green"},{"score":{"name":"hour","objective":"servertime"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"min","objective":"servertime"},"color":"green"},{"text":" (and ","color":"light_purple"},{"score":{"name":"sec","objective":"servertime"},"color":"light_purple"},{"text":" seconds)\n\nYou can use this to see how slow/fast the server runs.","color":"light_purple"}]
execute as @s[scores={time=1..}] if score min servertime matches 10.. run tellraw @s ["",{"text":"Server time\nBased on Minecraft's Ticks\n\nTime:","color":"light_purple"},{"text":" ","color":"green"},{"score":{"name":"hour","objective":"servertime"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"min","objective":"servertime"},"color":"green"},{"text":" (and ","color":"light_purple"},{"score":{"name":"sec","objective":"servertime"},"color":"light_purple"},{"text":" seconds)\n\nYou can use this to see how slow/fast the server runs.","color":"light_purple"}]
scoreboard players set @s time 0
scoreboard players add @s energy 0
execute as @s[scores={energy.=600..,energy=..119}] run scoreboard players add @s energy 1
execute as @s[scores={energy.=600..}] run scoreboard players remove @s energy. 600

execute as @s[scores={minequartz=1..,myrandom=0..2}] at @s run summon zombified_piglin
scoreboard players set @s minequartz 0

execute as @s[scores={eatglowberry=1..}] run effect clear @s absorption
execute as @s[scores={eatglowberry=1..}] run effect give @s absorption 30 0 false
execute as @s[scores={eatglowberry=1..}] run effect give @s regeneration 4 1 false
execute as @s[scores={eatglowberry=1..}] run effect give @s glowing 30 0 false
execute as @s[scores={eatglowberry=1..}] run damage @s 2 out_of_world
scoreboard players set @s eatglowberry 0


execute at @s unless block ~ ~-1 ~ air if block ~ ~ ~ water unless block ~ ~-1 ~ water run scoreboard players operation @s fall = @s falldmgmlg
execute at @s unless block ~ ~-1 ~ air if block ~ ~ ~ water unless block ~ ~-1 ~ water run scoreboard players operation @s fall /= 5 intnumbers
execute at @s unless block ~ ~-1 ~ air if block ~ ~ ~ water unless block ~ ~-1 ~ water run scoreboard players operation @s fall *= @s falldmgmlg
execute at @s unless block ~ ~-1 ~ air if block ~ ~ ~ water unless block ~ ~-1 ~ water run function cmd:falldmg
execute at @s unless block ~ ~-1 ~ air if block ~ ~-1 ~ water unless block ~ ~-2 ~ water run scoreboard players operation @s fall = @s falldmgmlg
execute at @s unless block ~ ~-1 ~ air if block ~ ~-1 ~ water unless block ~ ~-2 ~ water run scoreboard players operation @s fall /= 5 intnumbers
execute at @s unless block ~ ~-1 ~ air if block ~ ~-1 ~ water unless block ~ ~-2 ~ water run scoreboard players operation @s fall *= @s falldmgmlg
execute at @s unless block ~ ~-1 ~ air if block ~ ~-1 ~ water unless block ~ ~-2 ~ water run function cmd:falldmg
execute at @s unless block ~ ~-1 ~ air run scoreboard players set @s falldmgmlg 0
execute at @s if block ~ ~-1 ~ air if block ~-1 ~-1 ~ air if block ~1 ~-1 ~ air if block ~ ~-1 ~1 air if block ~-1 ~-1 ~-1 air run scoreboard players add @s falldmgmlg 1

clear @s slime_ball


#execute if entity @s[scores={skills=1..,skills.cd=1..}] run tellraw @s [{"text":"Skill Cooldown! (","color":"red"},{"score":{"name":"@s","objective":"skills.cd"},"color":"red"},{"text":" seconds remaining)","color":"red"}]


scoreboard players add @s combatLvlC 0
scoreboard players add @s axesLvlC 0
scoreboard players add @s pickaxesLvlC 0
scoreboard players add @s gatheringLvlC 0
scoreboard players add @s defenseLvlC 0

scoreboard players set @s[scores={combatLvlC=0}] combatLvlC 5
scoreboard players set @s[scores={axesLvlC=0}] axesLvlC 5
scoreboard players set @s[scores={pickaxesLvlC=0}] pickaxesLvlC 5
scoreboard players set @s[scores={gatheringLvlC=0}] gatheringLvlC 5
scoreboard players set @s[scores={defenseLvlC=0}] defenseLvlC 5
execute if entity @s[scores={skills=0}] run tellraw @s ["\n",{"text":"Skill Levels","color":"light_purple"},{"text":"\n\n"},{"text":"Combat: ","color":"aqua"},{"score":{"name":"@s","objective":"combatLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 1"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"combatLvlC"},"color":"green"},{"text":" SP)\nAxes: ","color":"aqua"},{"score":{"name":"@s","objective":"axesLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+) ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 2"}},{"text":"(","color":"aqua"},{"score":{"name":"@s","objective":"axesLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\n"},{"text":"Pickaxes: ","color":"aqua"},{"score":{"name":"@s","objective":"pickaxesLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 3"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"pickaxesLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\n"},{"text":"Gathering: ","color":"aqua"},{"score":{"name":"@s","objective":"gatheringLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 4"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"gatheringLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\nDefense: ","color":"aqua"},{"score":{"name":"@s","objective":"defenseLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 5"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"defenseLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\n\n"},{"text":"Click the + to increase using Skill Points.\nCosts 5 at first, then doubles each time","color":"aqua"}]


scoreboard objectives add tempSkillCalc dummy
 

execute if score @s[scores={skills=1}] xp < @s combatLvlC run tellraw @s {"text":"Not enough skill points! Skill points are your in-game levels", "color":"red"}
execute if score @s[scores={skills=1}] xp >= @s combatLvlC run tag @s add CASL
execute if entity @s[scores={skills=1},tag=CASL] run scoreboard players add @s combatLvl 1
execute if entity @s[scores={skills=1},tag=CASL] run tellraw @s [{"text":"Upgraded Combat Skill Level. (Now SL ","color":"green"},{"score":{"name":"@s","objective":"combatLvl"},"color":"green"},{"text":")","color":"green"}]
execute if entity @s[scores={skills=1},tag=CASL] run scoreboard players operation @s tempSkillCalc = @s combatLvlC
execute if entity @s[scores={skills=1},tag=CASL] run function cmd:calcskill
execute if entity @s[scores={skills=1},tag=CASL] run scoreboard players operation @s combatLvlC *= @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] skills
execute if entity @s[scores={skills=1},tag=CASL] run tag @s remove CASL

execute if score @s[scores={skills=2}] xp < @s axesLvlC run tellraw @s {"text":"Not enough skill points! Skill points are your in-game levels", "color":"red"}
execute if score @s[scores={skills=2}] xp >= @s axesLvlC run tag @s add CASL
execute if entity @s[scores={skills=2},tag=CASL] run scoreboard players add @s axesLvl 1
execute if entity @s[scores={skills=2},tag=CASL] run tellraw @s [{"text":"Upgraded Axes Skill Level. (Now SL ","color":"green"},{"score":{"name":"@s","objective":"axesLvl"},"color":"green"},{"text":")","color":"green"}]
execute if entity @s[scores={skills=2},tag=CASL] run scoreboard players operation @s tempSkillCalc = @s axesLvlC
execute if entity @s[scores={skills=2},tag=CASL] run function cmd:calcskill
execute if entity @s[scores={skills=2},tag=CASL] run scoreboard players operation @s axesLvlC *= @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] skills
execute if entity @s[scores={skills=2},tag=CASL] run tag @s remove CASL

execute if score @s[scores={skills=3}] xp < @s pickaxesLvlC run tellraw @s {"text":"Not enough skill points! Skill points are your in-game levels", "color":"red"}
execute if score @s[scores={skills=3}] xp >= @s pickaxesLvlC run tag @s add CASL
execute if entity @s[scores={skills=3},tag=CASL] run scoreboard players add @s pickaxesLvl 1
execute if entity @s[scores={skills=3},tag=CASL] run tellraw @s [{"text":"Upgraded Pickaxes Skill Level. (Now SL ","color":"green"},{"score":{"name":"@s","objective":"pickaxesLvl"},"color":"green"},{"text":")","color":"green"}]
execute if entity @s[scores={skills=3},tag=CASL] run scoreboard players operation @s tempSkillCalc = @s pickaxesLvlC
execute if entity @s[scores={skills=3},tag=CASL] run function cmd:calcskill
execute if entity @s[scores={skills=3},tag=CASL] run scoreboard players operation @s pickaxesLvlC *= @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] skills
execute if entity @s[scores={skills=3},tag=CASL] run tag @s remove CASL

execute if score @s[scores={skills=4}] xp < @s gatheringLvlC run tellraw @s {"text":"Not enough skill points! Skill points are your in-game levels", "color":"red"}
execute if score @s[scores={skills=4}] xp >= @s gatheringLvlC run tag @s add CASL
execute if entity @s[scores={skills=4},tag=CASL] run scoreboard players add @s gatheringLvl 1
execute if entity @s[scores={skills=4},tag=CASL] run tellraw @s [{"text":"Upgraded Gathering Skill Level. (Now SL ","color":"green"},{"score":{"name":"@s","objective":"gatheringLvl"},"color":"green"},{"text":")","color":"green"}]
execute if entity @s[scores={skills=4},tag=CASL] run scoreboard players operation @s tempSkillCalc = @s gatheringLvlC
execute if entity @s[scores={skills=4},tag=CASL] run function cmd:calcskill
execute if entity @s[scores={skills=4},tag=CASL] run scoreboard players operation @s gatheringLvlC *= @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] skills
execute if entity @s[scores={skills=4},tag=CASL] run tag @s remove CASL


execute if score @s[scores={skills=5}] xp < @s defenseLvlC run tellraw @s {"text":"Not enough skill points! Skill points are your in-game levels", "color":"red"}
execute if score @s[scores={skills=5}] xp >= @s defenseLvlC run tag @s add CASL
execute if entity @s[scores={skills=5},tag=CASL] run scoreboard players add @s defenseLvl 1
execute if entity @s[scores={skills=5},tag=CASL] run tellraw @s [{"text":"Upgraded Defense Skill Level. (Now SL ","color":"green"},{"score":{"name":"@s","objective":"defenseLvl"},"color":"green"},{"text":")","color":"green"}]
execute if entity @s[scores={skills=5},tag=CASL] run scoreboard players operation @s tempSkillCalc = @s defenseLvlC
execute if entity @s[scores={skills=5},tag=CASL] run function cmd:calcskill
execute if entity @s[scores={skills=5},tag=CASL] run scoreboard players operation @s defenseLvlC *= @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] skills
execute if entity @s[scores={skills=5},tag=CASL] run tag @s remove CASL

execute if entity @s[scores={skills=1..5}] run tellraw @s ["\n",{"text":"Skill Levels","color":"light_purple"},{"text":"\n\n"},{"text":"Combat: ","color":"aqua"},{"score":{"name":"@s","objective":"combatLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 1"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"combatLvlC"},"color":"green"},{"text":" SP)\nAxes: ","color":"aqua"},{"score":{"name":"@s","objective":"axesLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+) ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 2"}},{"text":"(","color":"aqua"},{"score":{"name":"@s","objective":"axesLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\n"},{"text":"Pickaxes: ","color":"aqua"},{"score":{"name":"@s","objective":"pickaxesLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 3"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"pickaxesLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\n"},{"text":"Gathering: ","color":"aqua"},{"score":{"name":"@s","objective":"gatheringLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 4"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"gatheringLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\nDefense: ","color":"aqua"},{"score":{"name":"@s","objective":"defenseLvl"},"color":"green"},{"text":"/10 ","color":"dark_aqua"},{"text":"(+)","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger skills set 5"}},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"defenseLvlC"},"color":"green"},{"text":" SP)","color":"aqua"},{"text":"\n\n"},{"text":"Click the + to increase using Skill Points.\nCosts 5 at first, then doubles each time","color":"aqua"}]

# /give @p sunflower{Volunteerer:1,display:{Name:'[{"text":"Certified Badge of Volunteering","italic":false,"color":"green"}]',Lore:['[{"text":"A badge given to active volunteers of the Public Base.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Effect:","italic":false,"color":"gray"}]','[{"text":"- Cost of ","italic":false,"color":"gray"},{"text":"/trigger home","underlined":true},{"text":" decreases by 10 Skill Points","underlined":false}]','[{"text":"- Respawning has a 30% to respawn you at Public Base","italic":false,"color":"gray"}]']}} 1
execute if entity @s[scores={skills=6,xp=..39}] run tellraw @s {"text":"Not enough skill points! Skill points are your in-game levels", "color":"red"}
# execute if entity @s[scores={skills=6,xp=60..}] run tag @s add cominghome
# execute if entity @s[scores={skills=6,xp=60..}] run gamerule showDeathMessages false
# execute if entity @s[scores={skills=6,xp=60..}] run kill @s
execute if entity @s[scores={skills=6,xp=40..}] run execute in the_end run tp @s 1000 100 1000
execute if entity @s[scores={skills=6,xp=40..}] run execute in the_end run setblock 1000 100 1000 end_portal
execute if entity @s[scores={skills=6,xp=40..}] run tellraw @s {"text":"Activated skill: Coming Home (ID 6)", "color":"green"}
execute if entity @s[scores={skills=6,xp=40..},nbt=!{Inventory:[{tag:{Volunteerer:1}}]}] run xp add @s -40 levels
execute if entity @s[scores={skills=6,xp=40..},nbt={Inventory:[{tag:{Volunteerer:1}}]}] run xp add @s -30 levels


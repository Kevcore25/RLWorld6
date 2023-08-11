scoreboard objectives add sleepModeVar dummy "Sleep mode variable"
function cmd:sleepmodefunctions/sleepsec

function cmd:sleepmodefunctions/runfunctions

function cmd:calcstats
function cmd:5min

kill @e[type=armor_stand,tag=randomGen]

forceload add 100 100
forceload add 1013 1014 988 986

# Random gen
scoreboard objectives add temp dummy "temporally var"
scoreboard objectives add myrandom dummy "User's Random Number"

scoreboard objectives add tempRandomgen dummy
# Start random as ... (set as 0)
scoreboard players set #amt tempRandomgen 0

scoreboard objectives add killmob totalKillCount


# Max random range (0-...)
scoreboard players set #max tempRandomgen 10

function cmd:randomrepeat
summon villager ~ ~ ~ {Age:-65535,Tags:["RMBdetection"]}
execute in the_end run summon villager ~ ~ ~ {Age:-65535,Tags:["RMBdetection"]}

execute in the_nether run summon villager ~ ~ ~ {Age:-65535,Tags:["RMBdetection"]}

scoreboard players set @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] skills 2

scoreboard objectives add useVill custom:talked_to_villager

team add rmbvill
team modify rmbvill collisionRule never
scoreboard objectives add peachLimit dummy

scoreboard objectives add placeHead used:player_head

scoreboard objectives add electricInfusion dummy 
scoreboard objectives add fireInfusion dummy 


scoreboard objectives add FNCD dummy 
scoreboard objectives add previousHp dummy



tellraw @a[tag=debuger] {"text":"load.mcfunction ran","color":"gray"}
execute in the_end run gamerule sendCommandFeedback false
execute in the_end run gamerule naturalRegeneration false
execute in the_nether run gamerule sendCommandFeedback false
execute in the_nether run gamerule naturalRegeneration false
execute in overworld run gamerule sendCommandFeedback false
execute in overworld run gamerule naturalRegeneration false
execute in overworld run gamerule reducedDebugInfo true
execute in the_end run gamerule reducedDebugInfo true
execute in the_nether run gamerule reducedDebugInfo true


execute in overworld run gamerule keepInventory true
execute in the_end run gamerule keepInventory true
execute in the_nether run gamerule keepInventory true
scoreboard objectives add mineClog minecraft.mined:minecraft.crimson_stem
scoreboard objectives add mineWlog minecraft.mined:minecraft.warped_stem
scoreboard objectives add mineJlog minecraft.mined:minecraft.jungle_log
scoreboard objectives add mineDOlog minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add mineAlog minecraft.mined:minecraft.acacia_log
scoreboard objectives add mineBlog minecraft.mined:minecraft.birch_log
scoreboard objectives add mineSlog minecraft.mined:minecraft.spruce_log
scoreboard objectives add mineOlog minecraft.mined:minecraft.oak_log
scoreboard objectives add kills totalKillCount
scoreboard objectives add saturation dummy
scoreboard objectives add exhaustion dummy
scoreboard objectives add debug trigger
scoreboard objectives add type trigger
scoreboard objectives add wild trigger
scoreboard objectives add wildcooldown trigger
scoreboard objectives add timeInMin trigger
scoreboard objectives add timeInSec dummy
scoreboard objectives add mineCplanks minecraft.mined:minecraft.crimson_planks
scoreboard objectives add mineWplanks minecraft.mined:minecraft.warped_planks
scoreboard objectives add mineJplanks minecraft.mined:minecraft.jungle_planks
scoreboard objectives add mineDOplanks minecraft.mined:minecraft.dark_oak_planks
scoreboard objectives add mineAplanks minecraft.mined:minecraft.acacia_planks
scoreboard objectives add mineCobble minecraft.mined:minecraft.cobblestone
scoreboard objectives add mineStone minecraft.mined:minecraft.stone
scoreboard objectives add fall1 minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add useVoid minecraft.used:minecraft.structure_void
scoreboard objectives add usePotion minecraft.used:minecraft.potion

scoreboard objectives add doDmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add home trigger "skill 6 shortcut"
scoreboard objectives add countentities dummy

scoreboard objectives add armorstats trigger "Armor stats cmd"

scoreboard objectives add dodgeCD dummy


scoreboard objectives add ARem dummy
scoreboard objectives add bloomtime dummy
scoreboard objectives add burning dummy
scoreboard objectives add overgrowpts dummy


scoreboard objectives add rockWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add rockRun minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add rockJump minecraft.custom:minecraft.jump
scoreboard objectives add throwRock minecraft.dropped:minecraft.firework_star
scoreboard objectives add throwHardrock minecraft.dropped:minecraft.gray_dye

scoreboard objectives add cheatcode trigger
scoreboard objectives add cheatcode.cd trigger

scoreboard objectives add skills trigger
scoreboard objectives add skills.cd trigger

scoreboard objectives add cltemptps dummy "KCLagRemoval TPS temporally variable"


scoreboard objectives add mineBplanks minecraft.mined:minecraft.birch_planks
scoreboard objectives add mineSplanks minecraft.mined:minecraft.spruce_planks
scoreboard objectives add mineOplanks minecraft.mined:minecraft.oak_planks

scoreboard objectives add useGarrot minecraft.used:minecraft.golden_carrot
scoreboard objectives add useGapple minecraft.used:minecraft.golden_apple
scoreboard objectives add useGGapple minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add xp level

scoreboard objectives add mineStone minecraft.mined:minecraft.stone
scoreboard objectives add mineDeepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add food food
scoreboard objectives add respawn. minecraft.custom:minecraft.time_since_death
scoreboard objectives add die. deathCount

scoreboard objectives add thirst trigger
scoreboard objectives add thirst. trigger
scoreboard objectives add quests trigger
scoreboard objectives add daily trigger

scoreboard objectives add rank trigger

scoreboard objectives add rank. trigger
scoreboard objectives add exp trigger

scoreboard objectives add stamina trigger
scoreboard objectives add staminacooldown dummy
scoreboard objectives add stamina. dummy

scoreboard objectives add useCOAS minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add useWFOAS minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add rocktimer dummy

scoreboard objectives add spawn trigger

scoreboard objectives add spawncooldown trigger

scoreboard objectives setdisplay belowName rank.

scoreboard objectives add news trigger

scoreboard objectives add useeye minecraft.used:spider_eye
scoreboard objectives add chokechance totalKillCount



scoreboard objectives add halloween trigger
scoreboard objectives add event1 minecraft.killed:minecraft.skeleton
scoreboard objectives add event2 dummy
scoreboard objectives add event3 minecraft.killed:minecraft.zombie


scoreboard objectives add px dummy
scoreboard objectives add py dummy
scoreboard objectives add pz dummy
scoreboard objectives add ax dummy
scoreboard objectives add ay dummy
scoreboard objectives add az dummy

scoreboard objectives add help trigger
scoreboard objectives add FastFire dummy

scoreboard objectives add craftedshield crafted:shield
scoreboard objectives add shieldsTemp dummy

scoreboard objectives add ARatk dummy
scoreboard objectives add ARdef dummy
scoreboard objectives add ARhp dummy
scoreboard objectives add ARer dummy
scoreboard objectives add ARcrit dummy
scoreboard objectives add ARstamina dummy

scoreboard objectives add tempElytra dummy
scoreboard objectives add tempElytra. dummy

scoreboard objectives add knockdown dummy
scoreboard objectives add takeDmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add resisDmg minecraft.custom:minecraft.damage_resisted
scoreboard objectives add absorbDmg minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add blockDmg minecraft.custom:minecraft.damage_blocked_by_shield

scoreboard objectives add reactionICD dummy

scoreboard objectives add noAITime dummy

scoreboard objectives add dmgResisted custom:damage_resisted
scoreboard objectives add shields trigger

scoreboard objectives add hp health {"text": "♥","color": "red"}
scoreboard objectives add mobhp health {"text": "♥","color": "red"}

scoreboard objectives add flameBlade dummy

team add player 
team modify player color green

scoreboard objectives add bloomhitamt dummy
scoreboard objectives add ypos dummy
scoreboard objectives add zpos dummy
scoreboard objectives add xpos dummy

scoreboard objectives add minesculk mined:sculk


scoreboard objectives add doADmg custom:damage_dealt_absorbed
scoreboard objectives add doRDmg custom:damage_dealt_resisted


scoreboard objectives add doDmgCriticals custom:damage_dealt
scoreboard objectives add criticalsTemp dummy

scoreboard objectives add useBook used:knowledge_book
scoreboard objectives add craftBook crafted:written_book

scoreboard objectives add combatLvl dummy "Combat SL"
scoreboard objectives add axesLvl dummy "Axes SL"
scoreboard objectives add pickaxesLvl dummy "Pickaxe SL"
scoreboard objectives add gatheringLvl dummy "Gathering SL"
scoreboard objectives add defenseLvl dummy "Defense SL"

scoreboard objectives add combatLvlC dummy "Combat SLC"
scoreboard objectives add axesLvlC dummy "Axes SLC"
scoreboard objectives add pickaxesLvlC dummy "Pickaxe SLC"
scoreboard objectives add gatheringLvlC dummy "Gathering SLC"
scoreboard objectives add defenseLvlC dummy "Defense SLC"

scoreboard objectives add mineTGrass mined:tall_grass

scoreboard players set @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=0}] mobhptemp 100
scoreboard players set @e[type=armor_stand,tag=randomGen,scores={tempRandomgen=1}] mobhptemp 2

scoreboard objectives add mobhptemp dummy
scoreboard objectives add maxhp dummy

scoreboard objectives add rocktemp dummy
scoreboard objectives add stats trigger
scoreboard objectives add resetall trigger

scoreboard objectives add ultCD dummy

## new STATUS ids!!!

# comment the following 2 lines to disable...
scoreboard objectives add currentStatus dummy
gamerule showDeathMessages false

scoreboard objectives add useBow used:bow
scoreboard objectives add mineCopper minecraft.mined:minecraft.copper_ore

scoreboard objectives add ARatkspd dummy
scoreboard objectives add ARemres dummy
scoreboard objectives add time trigger
scoreboard objectives add challenges trigger

# electirifced
scoreboard objectives add electrified dummy "Electrified Time"
scoreboard objectives add electrifiedEM dummy "Electrified EM DMG"

scoreboard objectives add event trigger

scoreboard objectives add DMGCD dummy "Damage CD"
# charred
scoreboard objectives add charredEM dummy
scoreboard objectives add charredTime dummy


# FIX UNEXISTING SCOREBOARD VAULES, BUT THESE ONLY APPLY TO RELICS
scoreboard objectives add ARcr10 dummy
scoreboard objectives add ARcr13 dummy
scoreboard objectives add ARcr16 dummy

scoreboard objectives add reactionDMG dummy

scoreboard objectives add intnumbers dummy

scoreboard players set 0 intnumbers 0
scoreboard players set 1 intnumbers 1
scoreboard players set 2 intnumbers 2
scoreboard players set 3 intnumbers 3
scoreboard players set 4 intnumbers 4
scoreboard players set 5 intnumbers 5
scoreboard players set 6 intnumbers 6
scoreboard players set 7 intnumbers 7
scoreboard players set 8 intnumbers 8
scoreboard players set 9 intnumbers 9
scoreboard players set 10 intnumbers 10
scoreboard players set 15 intnumbers 15
scoreboard players set 20 intnumbers 20
scoreboard players set 25 intnumbers 25
scoreboard players set 30 intnumbers 30
scoreboard players set 100 intnumbers 100

scoreboard objectives add bleedtime dummy
scoreboard objectives add staggeredtime dummy
scoreboard objectives add puncturedtime dummy
scoreboard objectives add critchance dummy

scoreboard objectives add random100 dummy

scoreboard objectives add dps dummy
scoreboard objectives add dpstemp dummy
scoreboard objectives add dpsp dummy
scoreboard objectives add dpsptemp dummy
scoreboard objectives add bleedtemp dummy

# ELEMENTAL DMG BONUS
scoreboard objectives add ARedb dummy
scoreboard objectives add ARedbtemp dummy
scoreboard objectives add ARedbpercent dummy

# PHYSCIAL DMG BONUS
scoreboard objectives add ARpdb dummy
scoreboard objectives add ARpdbtemp dummy
scoreboard objectives add ARpdbpercent dummy

scoreboard objectives add physicalDMG dummy


scoreboard objectives add highestdps dummy


scoreboard objectives add takedmg custom:damage_taken

scoreboard objectives add fixedcritrate dummy


scoreboard objectives add naturetarget dummy
scoreboard objectives add naturetargetCD dummy




scoreboard objectives add eatglowberry used:glow_berries


scoreboard objectives add falldmgmlg dummy


scoreboard objectives add staminafullness dummy

scoreboard objectives add firstaidLvl dummy "First Aid SL"
scoreboard objectives add firstaidLvlC dummy "First Aid SLC"

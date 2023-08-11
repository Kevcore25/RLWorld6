# CALC STATS
# Kevcore 06/13/2023

schedule function cmd:calcstats 3s replace




## STATS


# Add scoreboard
#scoreboard objectives add ARatk dummy "Armor stat: ATK"

# Reset scores...


# For every armor piece that has "ARatk", add one to the counter
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1
# execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARatk:1}}]}] run scoreboard players add @s ARatk 1

scoreboard players add @a noAITime 0

execute at @a[tag=!spectating] as @e[distance=..96] run attribute @s generic.knockback_resistance base set 0.75

# Remember, base ATK is 1
# execute as @a[tag=!spectating,gamemode=creative] run scoreboard players add @s ARatk 200
execute as @a[tag=!spectating] run function cmd:cmd/calcatk
# DEF now
#scoreboard objectives add ARdef dummy "Armor stat: DEF" 
scoreboard players set @a ARdef 0
scoreboard players set @a[tag=easyMode] ARdef 4
scoreboard players add @a[scores={defenseLvl=6..}] ARdef 1
scoreboard players add @a[scores={defenseLvl=8..}] ARdef 1
scoreboard players add @a[scores={defenseLvl=10..}] ARdef 2
execute as @a[tag=!spectating] if entity @s[tag=!slrequired,nbt={SelectedItem:{tag:{WindAspect:1}}}] run scoreboard players add @s ARdef 1

execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARdef:1}}]}] run scoreboard players add @s ARdef 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARdef:1}}]}] run scoreboard players add @s ARdef 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARdef:1}}]}] run scoreboard players add @s ARdef 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARdef:1}}]}] run scoreboard players add @s ARdef 1
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{tag:{ART-Defender:1}}]}] run scoreboard players add @s ARdef 1
# Relics
execute as @a[nbt={Inventory:[{tag:{RESdef:1}}]}] run function cmd:calcrelics/def

# Remember, base is 0
execute as @a[tag=!spectating] if entity @s[scores={ARdef=0}] run attribute @s generic.armor base set 0
execute as @a[tag=!spectating] if entity @s[scores={ARdef=1}] run attribute @s generic.armor base set 2.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=2}] run attribute @s generic.armor base set 5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=3}] run attribute @s generic.armor base set 7.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=4}] run attribute @s generic.armor base set 10
execute as @a[tag=!spectating] if entity @s[scores={ARdef=5}] run attribute @s generic.armor base set 12.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=6}] run attribute @s generic.armor base set 15
execute as @a[tag=!spectating] if entity @s[scores={ARdef=7}] run attribute @s generic.armor base set 17.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=8..}] run attribute @s generic.armor base set 20
execute as @a[tag=!spectating] if entity @s[scores={ARdef=0}] run attribute @s generic.armor_toughness base set 0
execute as @a[tag=!spectating] if entity @s[scores={ARdef=1}] run attribute @s generic.armor_toughness base set 2.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=2}] run attribute @s generic.armor_toughness base set 5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=3}] run attribute @s generic.armor_toughness base set 7.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=4}] run attribute @s generic.armor_toughness base set 10
execute as @a[tag=!spectating] if entity @s[scores={ARdef=5}] run attribute @s generic.armor_toughness base set 12.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=6}] run attribute @s generic.armor_toughness base set 15
execute as @a[tag=!spectating] if entity @s[scores={ARdef=7}] run attribute @s generic.armor_toughness base set 17.5
execute as @a[tag=!spectating] if entity @s[scores={ARdef=8..}] run attribute @s generic.armor_toughness base set 20


# hp now
#scoreboard objectives add ARhp dummy "Armor stat: HP"
scoreboard players set @a ARhp 0
scoreboard players set @a[tag=easyMode] ARhp 1

execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARhp:1}}]}] run scoreboard players add @s ARhp 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARhp:1}}]}] run scoreboard players add @s ARhp 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARhp:1}}]}] run scoreboard players add @s ARhp 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARhp:1}}]}] run scoreboard players add @s ARhp 1


execute as @a[tag=!spectating] if entity @s[scores={firstaidLvl=5..}] run scoreboard players add @s ARhp 1
execute as @a[tag=!spectating] if entity @s[scores={firstaidLvl=10..}] run scoreboard players add @s ARhp 1

# Relics
execute as @a[nbt={Inventory:[{tag:{REShp:1}}]}] run function cmd:calcrelics/hp

execute as @a[tag=!spectating] if entity @s[scores={ARhp=0}] run attribute @s generic.max_health base set 10
execute as @a[tag=!spectating] if entity @s[scores={ARhp=1}] run attribute @s generic.max_health base set 12
execute as @a[tag=!spectating] if entity @s[scores={ARhp=2}] run attribute @s generic.max_health base set 14
execute as @a[tag=!spectating] if entity @s[scores={ARhp=3}] run attribute @s generic.max_health base set 16
execute as @a[tag=!spectating] if entity @s[scores={ARhp=4}] run attribute @s generic.max_health base set 18
execute as @a[tag=!spectating] if entity @s[scores={ARhp=5}] run attribute @s generic.max_health base set 20
execute as @a[tag=!spectating] if entity @s[scores={ARhp=6}] run attribute @s generic.max_health base set 22
execute as @a[tag=!spectating] if entity @s[scores={ARhp=7}] run attribute @s generic.max_health base set 24
execute as @a[tag=!spectating] if entity @s[scores={ARhp=8..}] run attribute @s generic.max_health base set 26


# crit now
#scoreboard objectives add ARcrit dummy "Armor stat: CRIT CHANCE"
scoreboard players set @a ARcrit 0
scoreboard players set @a[tag=easyMode] ARcrit 1

execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARcrit:1}}]}] run scoreboard players add @s ARcrit 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARcrit:1}}]}] run scoreboard players add @s ARcrit 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARcrit:1}}]}] run scoreboard players add @s ARcrit 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARcrit:1}}]}] run scoreboard players add @s ARcrit 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={SelectedItem:{tag:{CRIT:1}}}] run scoreboard players add @s ARcrit 1

effect give @e[type=pillager] speed 10 2

# Crit doesnt need a generic, since its controlled by main (cmd:cmd)
#ADDCRIT LATER, NOT OUT YET
scoreboard players set @a ARer 0
scoreboard players add @a[scores={gatheringLvl=6..}] ARer 1
scoreboard players add @a[scores={gatheringLvl=8..}] ARer 1

execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARer:1}}]}] run scoreboard players add @s ARer 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARer:1}}]}] run scoreboard players add @s ARer 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARer:1}}]}] run scoreboard players add @s ARer 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARer:1}}]}] run scoreboard players add @s ARer 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={SelectedItem:{tag:{ER:1}}}] run scoreboard players add @s ARer 2
# Relics
execute as @a[nbt={Inventory:[{tag:{RESer:1}}]}] run function cmd:calcrelics/er

# execute in the_end at @a[distance=600..] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 ender_chest replace chest
scoreboard players add @a tempElytra 0
scoreboard players add @a tempElytra. 0
# execute at @e[type=rabbit] run fill ~ ~-1 ~ ~ ~1 ~ oak_log keep
# execute at @e[type=rabbit] run fill ~ ~ ~1 ~ ~1 ~1 oak_leaves keep
# execute at @e[type=rabbit] run fill ~ ~ ~1 ~ ~1 ~-1 oak_leaves keep
# execute at @e[type=rabbit] run fill ~-1 ~ ~ ~-1 ~1 ~ oak_leaves keep
# execute at @e[type=rabbit] run fill ~1 ~ ~ ~1 ~1 ~ oak_leaves keep
# execute at @e[type=rabbit] run fill ~ ~ ~ ~ ~2 ~ oak_leaves keep
# tp @e[type=rabbit] 0 -400 0

execute at @a[tag=!spectating] as @e[distance=..24,nbt={ActiveEffects:[{Id:33}]}] at @s[type=!armor_stand] run scoreboard players set @s currentStatus 15
execute at @a[tag=!spectating] as @e[distance=..24,nbt={ActiveEffects:[{Id:33}]}] at @s[type=!armor_stand] run damage @s 2 magic


# EM now
#scoreboard objectives add ARdef dummy "Armor stat: DEF" 
scoreboard players set @a ARem 0
scoreboard players set @a[tag=easyMode] ARem 1
scoreboard players add @a[scores={combatLvl=6..}] ARem 1
scoreboard players add @a[scores={combatLvl=8..}] ARem 1
scoreboard players add @a[scores={combatLvl=10..}] ARem 1

execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:103b,tag:{ARem:1}}]}] run scoreboard players add @s ARem 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:102b,tag:{ARem:1}}]}] run scoreboard players add @s ARem 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:101b,tag:{ARem:1}}]}] run scoreboard players add @s ARem 1
execute as @a[tag=!spectating] if entity @s[tag=!sldrequired,nbt={Inventory:[{Slot:100b,tag:{ARem:1}}]}] run scoreboard players add @s ARem 1
# Relics
execute as @a[nbt={Inventory:[{tag:{RESem:1}}]}] run function cmd:calcrelics/em

# ATKSPD now
scoreboard players set @a ARatkspd 0
# Relics
# execute as @a[nbt={Inventory:[{tag:{RESatkspd:1}}]}] run function cmd:calcrelics/atkspd

# execute as @a[tag=!spectating] if entity @s[tag=BedrockUser] run scoreboard players add @s ARatkspd 2
# execute as @a[tag=!spectating] if entity @s[gamemode=creative] run scoreboard players add @s ARatkspd 200

scoreboard players set @a ARatkspd 0
scoreboard players set @a[tag=BedrockUser] ARatkspd 200

execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=0}] run attribute @s generic.attack_speed base set 4
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=1}] run attribute @s generic.attack_speed base set 4.15
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=2}] run attribute @s generic.attack_speed base set 4.3
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=3}] run attribute @s generic.attack_speed base set 4.45
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=4}] run attribute @s generic.attack_speed base set 4.6
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=5}] run attribute @s generic.attack_speed base set 4.75
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=6}] run attribute @s generic.attack_speed base set 4.9
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=7}] run attribute @s generic.attack_speed base set 5.05
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=8..}] run attribute @s generic.attack_speed base set 5.2
execute as @a[tag=!spectating] if entity @s[scores={ARatkspd=200..}] run attribute @s generic.attack_speed base set 1024


# emres now
scoreboard players set @a ARemres 0
scoreboard players set @a[tag=easyMode] ARemres 3

# Relics
execute as @a[nbt={Inventory:[{tag:{RESemres:1}}]}] run function cmd:calcrelics/emres

# EDB
scoreboard players set @a ARedb 0
execute as @a[nbt={Inventory:[{tag:{RESedb:1}}]}] run function cmd:calcrelics/edb

# PDB
scoreboard players set @a ARpdb 0
execute as @a[nbt={Inventory:[{tag:{RESpdb:1}}]}] run function cmd:calcrelics/pdb


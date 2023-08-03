
scoreboard players set @s critchance 0
scoreboard players operation @s critchance = @s ARcrit
scoreboard players set .armor critchance 12
scoreboard players operation @s critchance *= .armor critchance

# BASE CRIT CHANCE (5%)
scoreboard players add @s critchance 5



# Relics
execute if entity @s[nbt={Inventory:[{tag:{REScr10:1}}]}] run function cmd:calcrelics/cr10
execute if entity @s[nbt={Inventory:[{tag:{REScr13:1}}]}] run function cmd:calcrelics/cr13
#there is a typo on cr16., its cf16. its hard to change it, sooo
execute if entity @s[nbt={Inventory:[{tag:{REScf16:1}}]}] run function cmd:calcrelics/cr16

# ARTIFACT
execute if entity @s[nbt={Inventory:[{tag:{ART-Attacker:1}}]},scores={critchance=101..}] run scoreboard players add @s critchance 18
execute if entity @s[nbt={Inventory:[{tag:{ART-Attacker:1}}]}] run scoreboard players add @s critchance 36

execute if entity @s[nbt={Inventory:[{tag:{ART-ScholarPublishedEssay:1}},{tag:{ART-ScholarFinalEssay:1}}]}] run scoreboard players operation @s critchance *= 15 intnumbers
execute if entity @s[nbt={Inventory:[{tag:{ART-ScholarPublishedEssay:1}},{tag:{ART-ScholarFinalEssay:1}}]}] run scoreboard players operation @s critchance /= 10 intnumbers

# unchanged sttat
scoreboard players operation @s fixedcritrate = @s critchance
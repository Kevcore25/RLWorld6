execute as @s[scores={challenges=1}] run tellraw @s ["",{"text":"Relics","bold":true,"color":"light_purple"},{"text":"\n"},{"text":"Your current Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"energy"},"color":"green"},{"text":"/120","color":"green"},{"text":"\n\n"},{"text":"Challenge Difficulty 1 (20 Energy)","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger challenges set -1"}},{"text":"\n"},{"text":"- 1 Bronze Relic, 1 Silver Relic (30%)","italic":true,"color":"gray"},{"text":"\n"},{"text":"Challenge Difficulty 2 (20 Energy)","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger challenges set -2"}},{"text":"\n"},{"text":"- 1 Bronze Relic, 1 Silver Relic, 1 Gold Relic (30%)","italic":true,"color":"gray"},{"text":"\n"},{"text":"Challenge Difficulty 3 (20 Energy)","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger challenges set -3"}},{"text":"\n"},{"text":"- 1 Silver Relic, 1 Gold Relic, 1 Diamond Relic (30%)","italic":true,"color":"gray"}]
execute as @s[scores={challenges=-1,energy=..19}] run tellraw @s "[RELIC CHALLENGE BETA] You don't have enough energy! You need 20 energy!"
execute as @s[scores={challenges=-1,energy=..19}] run scoreboard players set @s challenges 0
execute as @s[scores={challenges=-2,energy=..19}] run tellraw @s "[RELIC CHALLENGE BETA] You don't have enough energy! You need 20 energy!"
execute as @s[scores={challenges=-2,energy=..19}] run scoreboard players set @s challenges 0
execute as @s[scores={challenges=-3,energy=..19}] run tellraw @s "[RELIC CHALLENGE BETA] You don't have enough energy! You need 20 energy!"
execute as @s[scores={challenges=-3,energy=..19}] run scoreboard players set @s challenges 0

execute as @s[scores={challenges=-4,energy=..19}] run tellraw @s "[Challenge Arena (Event)] The arena requires 20 Energy"
execute as @s[scores={challenges=-4,energy=..19}] run scoreboard players set @s challenges 0


execute as @s[scores={challenges=-4..-1}] run tp @s 1000.5 198 1012.5
execute as @s[scores={challenges=-4..-1}] run fill 1020 198 980 980 198 1020 air replace fire
execute as @s[scores={challenges=-4..-1}] positioned 1000 200 1000 run kill @e[type=!player,distance=..36]
execute as @s[scores={challenges=-4..-1}] positioned 1000 200 1000 run kill @e[type=!player,distance=..36]

execute as @s[scores={challenges=-4..-1}] run scoreboard players remove @s energy 20

execute as @s[scores={challenges=-1}] run scoreboard players set reward challenges 1
execute as @s[scores={challenges=-2}] run scoreboard players set reward challenges 2
execute as @s[scores={challenges=-3}] run scoreboard players set reward challenges 3
execute as @s[scores={challenges=-4}] run scoreboard players set reward challenges 4

execute as @s[scores={challenges=-4..-1}] run scoreboard players set started challenges 1
execute as @s[scores={challenges=-3..-1}] run scoreboard players set @s temperature 0
execute as @s[scores={challenges=-4..-1}] run effect give @s instant_health 1 15
execute as @s[scores={challenges=-4..-1}] run effect give @s saturation 1 15
execute as @s[scores={challenges=-4..-1}] run scoreboard players operation user challenges = @s tpa.pid
execute as @s[scores={challenges=-4..-1}] run kill @e[tag=relicChallenge]

execute as @s[scores={challenges=-1}] run summon minecraft:pillager 1000 200 992 {Tags:["noreplacearmor","icePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-1}] run summon minecraft:pillager 1000 200 992 {Tags:["noreplacearmor","icePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-1}] run summon blaze 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-1}] run summon blaze 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-1}] run summon blaze 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}


execute as @s[scores={challenges=-2}] run summon evoker 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-2}] run summon minecraft:pillager 1000 200 992 {Tags:["noreplacearmor","naturePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-2}] run summon minecraft:pillager 1000 200 992 {Tags:["noreplacearmor","naturePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-2}] run summon minecraft:pillager 1000 200 992 {Tags:["noreplacearmor","firePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-2}] run summon minecraft:pillager 1001 200 992 {Tags:["noreplacearmor","firePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-2}] run summon minecraft:pillager 1001 200 992 {Tags:["noreplacearmor","icePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-2}] run summon minecraft:pillager 1001 200 992 {Tags:["noreplacearmor","electricPillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}


execute as @s[scores={challenges=-3}] run summon minecraft:pillager 1000 199 992 {Tags:["noreplacearmor","icePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-3}] run summon minecraft:pillager 1000 199 992 {Tags:["noreplacearmor","icePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-3}] run summon minecraft:pillager 1000 199 992 {Tags:["noreplacearmor","icePillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-3}] run summon minecraft:pillager 1000 199 992 {Tags:["noreplacearmor","waterPillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-3}] run summon minecraft:pillager 1000 199 992 {Tags:["noreplacearmor","waterPillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-3}] run summon minecraft:pillager 1000 199 992 {Tags:["noreplacearmor","waterPillager","relicChallenge","important"],Health:16,HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,1.00f],Attributes:[{Name:"generic.max_health",Base:16f}],ArmorItems:[{id:written_book,tag:{Waypoint:1,display:{Name:'[{"text":"Waypoint Creator","italic":false}]',Lore:['[{"text":"Throw on top of a stone brick","italic":false,"color":"gray"}]','[{"text":"to create a waypoint.","italic":false,"color":"gray"}]']}},Count:1},{id:nether_star,tag:{ReactantCore:1,display:{Name:'[{"text":"Reactant Core","italic":false,"color":"aqua"}]',Lore:['[{"text":"Combines 2 different elemental arrows into 5 reaction arrows.","italic":false,"color":"gray"}]']}},Count:1},{id:heart_of_the_sea,tag:{TransmuteCore:1,display:{Name:'[{"text":"Transmutation Core","italic":false,"color":"light_purple"}]',Lore:['[{"text":"A rare core that can be used to transmute items","italic":false,"color":"gray"}]']},Enchantments:[{}]},Count:1}],ArmorDropChances:[0.01f,0.05f,0.01f]}
execute as @s[scores={challenges=-3}] run summon ravager 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon ravager 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon ravager 1000 199 992 {Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon evoker 1000 199 992 {Health:60,Attributes:[{Name:"generic.max_health",Base:60}],Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon evoker 1000 199 992 {Health:60,Attributes:[{Name:"generic.max_health",Base:60}],Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon evoker 1000 199 992 {Health:60,Attributes:[{Name:"generic.max_health",Base:60}],Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon evoker 1000 199 992 {Health:60,Attributes:[{Name:"generic.max_health",Base:60}],Tags:["relicChallenge","important"],PersistenceRequired:1b}
execute as @s[scores={challenges=-3}] run summon evoker 1000 199 992 {Health:60,Attributes:[{Name:"generic.max_health",Base:60}],Tags:["relicChallenge","important"],PersistenceRequired:1b}

execute as @s[scores={challenges=-4}] run summon minecraft:vindicator 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:vindicator 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:vindicator 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:vindicator 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:vindicator 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:"minecraft:diamond_axe",Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
# execute as @s[scores={challenges=-4}] run summon minecraft:pillager 1000 200 1000 {Tags:["meltPillager","relicChallenge","important"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
# execute as @s[scores={challenges=-4}] run summon minecraft:pillager 1000 200 1000 {Tags:["meltPillager","relicChallenge","important"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:pillager 1000 200 1000 {Tags:["freezePillager","relicChallenge","important"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:pillager 1000 200 1000 {Tags:["freezePillager","relicChallenge","important"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
#execute as @s[scores={challenges=-4}] run summon minecraft:pillager 1000 200 1000 {Tags:["radiationPillager","relicChallenge","important"],HandItems:[{id:crossbow,tag:{RespawnedItem:1,Enchantments:[{id:quick_charge,lvl:5},{id:multishot,lvl:1}]},Count:1}],HandDropChances:[0.00f,0.00f],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:ravager 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:diamond_axe,Count:1b}],HandDropChances:[0.00f,0.00f],Health:400,Attributes:[{Name:"generic.max_health",Base:400f}]}
#execute as @s[scores={challenges=-4}] run summon minecraft:blaze 1000 200 1000 {Tags:["relicChallenge","important"],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:ravager 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:diamond_axe,Count:1b}],HandDropChances:[0.00f,0.00f],Health:400,Attributes:[{Name:"generic.max_health",Base:400f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:ravager 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:diamond_axe,Count:1b}],HandDropChances:[0.00f,0.00f],Health:400,Attributes:[{Name:"generic.max_health",Base:400f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:ravager 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:diamond_axe,Count:1b}],HandDropChances:[0.00f,0.00f],Health:400,Attributes:[{Name:"generic.max_health",Base:400f}]}
execute as @s[scores={challenges=-4}] run summon minecraft:ravager 1000 200 1000 {Tags:["relicChallenge","important"],HandItems:[{id:diamond_axe,Count:1b}],HandDropChances:[0.00f,0.00f],Health:400,Attributes:[{Name:"generic.max_health",Base:400f}]}
execute as @s[scores={challenges=-4}] run summon hoglin 1000 200 1000 {Tags:["relicChallenge","important"],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}],HandItems:[{id:diamond_axe,Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f]}
execute as @s[scores={challenges=-4}] run summon hoglin 1000 200 1000 {Tags:["relicChallenge","important"],Health:500,Attributes:[{Name:"generic.max_health",Base:500f}],HandItems:[{id:diamond_axe,Count:1b,tag:{Enchantments:[{id:sharpness,lvl:5}]}}],HandDropChances:[0.00f,0.00f]}


team add challengesteam
team modify challengesteam friendlyFire true
team join challengesteam @e[tag=relicChallenge]
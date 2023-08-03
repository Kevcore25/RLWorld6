
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REedb:-1}}]}] run scoreboard players remove @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REedb:-1}}]}] run scoreboard players remove @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REedb:-1}}]}] run scoreboard players remove @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REedb:-1}}]}] run scoreboard players remove @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REedb:-1}}]}] run scoreboard players remove @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REedb:-1}}]}] run scoreboard players remove @s ARedb 1

execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REedb:1}}]}] run scoreboard players add @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REedb:2}}]}] run scoreboard players add @s ARedb 2
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REedb:3}}]}] run scoreboard players add @s ARedb 3
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REedb:4}}]}] run scoreboard players add @s ARedb 4
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REedb:1}}]}] run scoreboard players add @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REedb:2}}]}] run scoreboard players add @s ARedb 2
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REedb:3}}]}] run scoreboard players add @s ARedb 3
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REedb:4}}]}] run scoreboard players add @s ARedb 4
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REedb:1}}]}] run scoreboard players add @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REedb:2}}]}] run scoreboard players add @s ARedb 2
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REedb:3}}]}] run scoreboard players add @s ARedb 3
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REedb:4}}]}] run scoreboard players add @s ARedb 4
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REedb:1}}]}] run scoreboard players add @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REedb:2}}]}] run scoreboard players add @s ARedb 2
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REedb:3}}]}] run scoreboard players add @s ARedb 3
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REedb:4}}]}] run scoreboard players add @s ARedb 4
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REedb:1}}]}] run scoreboard players add @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REedb:2}}]}] run scoreboard players add @s ARedb 2
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REedb:3}}]}] run scoreboard players add @s ARedb 3
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REedb:4}}]}] run scoreboard players add @s ARedb 4
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REedb:1}}]}] run scoreboard players add @s ARedb 1
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REedb:2}}]}] run scoreboard players add @s ARedb 2
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REedb:3}}]}] run scoreboard players add @s ARedb 3
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REedb:4}}]}] run scoreboard players add @s ARedb 4

# also calc elemental dmg bonus
scoreboard players operation @s ARedbpercent = @s ARedb
scoreboard players operation @s ARedbpercent *= 20 intnumbers
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REpdb:1}}]}] run scoreboard players add @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REpdb:2}}]}] run scoreboard players add @s ARpdb 2
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REpdb:3}}]}] run scoreboard players add @s ARpdb 3
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REpdb:4}}]}] run scoreboard players add @s ARpdb 4
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REpdb:1}}]}] run scoreboard players add @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REpdb:2}}]}] run scoreboard players add @s ARpdb 2
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REpdb:3}}]}] run scoreboard players add @s ARpdb 3
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REpdb:4}}]}] run scoreboard players add @s ARpdb 4
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REpdb:1}}]}] run scoreboard players add @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REpdb:2}}]}] run scoreboard players add @s ARpdb 2
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REpdb:3}}]}] run scoreboard players add @s ARpdb 3
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REpdb:4}}]}] run scoreboard players add @s ARpdb 4
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REpdb:1}}]}] run scoreboard players add @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REpdb:2}}]}] run scoreboard players add @s ARpdb 2
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REpdb:3}}]}] run scoreboard players add @s ARpdb 3
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REpdb:4}}]}] run scoreboard players add @s ARpdb 4
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REpdb:1}}]}] run scoreboard players add @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REpdb:2}}]}] run scoreboard players add @s ARpdb 2
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REpdb:3}}]}] run scoreboard players add @s ARpdb 3
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REpdb:4}}]}] run scoreboard players add @s ARpdb 4
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REpdb:1}}]}] run scoreboard players add @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REpdb:2}}]}] run scoreboard players add @s ARpdb 2
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REpdb:3}}]}] run scoreboard players add @s ARpdb 3
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REpdb:4}}]}] run scoreboard players add @s ARpdb 4


execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{REpdb:-1}}]}] run scoreboard players remove @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{REpdb:-1}}]}] run scoreboard players remove @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{REpdb:-1}}]}] run scoreboard players remove @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:19b,tag:{REpdb:-1}}]}] run scoreboard players remove @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:27b,tag:{REpdb:-1}}]}] run scoreboard players remove @s ARpdb 1
execute if entity @s[nbt={Inventory:[{Slot:28b,tag:{REpdb:-1}}]}] run scoreboard players remove @s ARpdb 1


# also calc physical dmg bonus %
scoreboard players operation @s ARpdbpercent = @s ARpdb
scoreboard players operation @s ARpdbpercent *= 30 intnumbers
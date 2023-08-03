
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:anvil"}]}] run give @s iron_block 3
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:anvil"}]}] run give @s iron_ingot 4
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:anvil"}]}] run tellraw @s {"text":"You cannot craft this item!","color":"red"}
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:anvil"}]}] run clear @s anvil 1
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:enchanting_table"}]}] run give @s obsidian 4
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:enchanting_table"}]}] run give @s diamond 2
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:enchanting_table"}]}] run give @s book 1
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:enchanting_table"}]}] run tellraw @s {"text":"You cannot craft this item!","color":"red"}
execute as @a[tag=!spectating] if entity @s[nbt={Inventory:[{id:"minecraft:enchanting_table"}]}] run clear @s enchanting_table 1

#execute if entity @s[scores={peachLimit=..19}] run effect give @s instant_health 1 0 true
#execute if entity @s[scores={peachLimit=..19},nbt={Inventory:[{Slot:103b,tag:{IncomingHealing:1}}]}] run effect give @s regeneration 1 2 true
execute if entity @s[scores={peachLimit=..19}] run scoreboard players add @s thirst 1
execute if entity @s[scores={peachLimit=..19}] run effect give @s saturation 1 3 true
execute if entity @s[scores={peachLimit=..19}] run effect give @s absorption 3 0 true
execute if entity @s[scores={peachLimit=..19}] at @s run playsound entity.player.burp player @a 
execute if entity @s[scores={peachLimit=20..}] at @s run tellraw @s [{"text":"Peach fullness reached!","color":"red"}]
execute if entity @s[scores={peachLimit=..19}] at @s run scoreboard players add @s peachLimit 5

execute if entity @s[scores={placeHead=1..}] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace player_head{SkullOwner:{Id:[I;-203190900,1315653592,-2004703885,1342631333]}}
execute if entity @s[scores={placeHead=1..}] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace player_wall_head{SkullOwner:{Id:[I;-203190900,1315653592,-2004703885,1342631333]}}

tellraw @s [{"text":"Peach fullness: ","color":"gold"},{"score":{"name":"@s","objective":"peachLimit"},"color":"gold"},{"text":"/20","color":"gold"}]

clear @s[gamemode=!creative] player_head{Peach:1} 1

execute if entity @s[scores={myrandom=0,thirst=..19}] unless entity @s[x_rotation=-90] run tellraw @s {"text": "You got parasites!", "color": "red"}
execute if entity @s[scores={myrandom=0,thirst=..19}] unless entity @s[x_rotation=-90] run effect give @s poison 8 0 true

execute if entity @s[scores={thirst=..19}] run playsound entity.generic.drink player @a
execute if entity @s[scores={thirst=..19}] run scoreboard players add @s thirst 1


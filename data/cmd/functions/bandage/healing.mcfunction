
tellraw @s {"text": "Restoring 2 hearts (♥♥)","color": "green"}
#effect give @s instant_health 1 0 true
tellraw @s[scores={firstaidLvl=0}] {"text": "You need a First Aid skill level of at least 1 to receive healing from bandages!","color": "red"}
effect give @s[scores={firstaidLvl=1}] minecraft:regeneration 2 1
effect give @s[scores={firstaidLvl=2}] minecraft:regeneration 3 1
effect give @s[scores={firstaidLvl=3..}] minecraft:regeneration 6 1

scoreboard players add @s[scores={firstaidLvl=6..,shields=1..}] shields 8
scoreboard players add @s[scores={firstaidLvl=6..}] shields 2

advancement revoke @s only bandage:aone
advancement revoke @s only bandage:atwo
advancement revoke @s only bandage:athree
advancement revoke @s only bandage:afour
advancement revoke @s only bandage:afive
advancement revoke @s only bandage:asix
advancement revoke @s only bandage:aseven
advancement revoke @s only bandage:aeight
advancement revoke @s only bandage:anine
advancement revoke @s only bandage:aten

recipe take @s bandage:one
recipe take @s bandage:two
recipe take @s bandage:three
recipe take @s bandage:four
recipe take @s bandage:five
recipe take @s bandage:six
recipe take @s bandage:seven
recipe take @s bandage:eight
recipe take @s bandage:nine
recipe take @s bandage:ten

playsound entity.leash_knot.place player @s
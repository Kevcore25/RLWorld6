
tellraw @s {"text": "Restoring 2 hearts (♥♥)","color": "green"}
#effect give @s instant_health 1 0 true
effect give @s minecraft:regeneration 6 1

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
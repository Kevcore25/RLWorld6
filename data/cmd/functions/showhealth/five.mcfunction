
execute if entity @s[scores={mobhptemp=81}] run data merge entity @s {CustomName:'{"text":"❤ 81%","color":"red"}'}
execute if entity @s[scores={mobhptemp=82}] run data merge entity @s {CustomName:'{"text":"❤ 82%","color":"red"}'}
execute if entity @s[scores={mobhptemp=83}] run data merge entity @s {CustomName:'{"text":"❤ 83%","color":"red"}'}
execute if entity @s[scores={mobhptemp=84}] run data merge entity @s {CustomName:'{"text":"❤ 84%","color":"red"}'}
execute if entity @s[scores={mobhptemp=85}] run data merge entity @s {CustomName:'{"text":"❤ 85%","color":"red"}'}
execute if entity @s[scores={mobhptemp=86}] run data merge entity @s {CustomName:'{"text":"❤ 86%","color":"red"}'}
execute if entity @s[scores={mobhptemp=87}] run data merge entity @s {CustomName:'{"text":"❤ 87%","color":"red"}'}
execute if entity @s[scores={mobhptemp=88}] run data merge entity @s {CustomName:'{"text":"❤ 88%","color":"red"}'}
execute if entity @s[scores={mobhptemp=89}] run data merge entity @s {CustomName:'{"text":"❤ 89%","color":"red"}'}
execute if entity @s[scores={mobhptemp=90}] run data merge entity @s {CustomName:'{"text":"❤ 90%","color":"red"}'}
execute if entity @s[scores={mobhptemp=91}] run data merge entity @s {CustomName:'{"text":"❤ 91%","color":"red"}'}
execute if entity @s[scores={mobhptemp=92}] run data merge entity @s {CustomName:'{"text":"❤ 92%","color":"red"}'}
execute if entity @s[scores={mobhptemp=93}] run data merge entity @s {CustomName:'{"text":"❤ 93%","color":"red"}'}
execute if entity @s[scores={mobhptemp=94}] run data merge entity @s {CustomName:'{"text":"❤ 94%","color":"red"}'}
execute if entity @s[scores={mobhptemp=95}] run data merge entity @s {CustomName:'{"text":"❤ 95%","color":"red"}'}
execute if entity @s[scores={mobhptemp=96}] run data merge entity @s {CustomName:'{"text":"❤ 96%","color":"red"}'}
execute if entity @s[scores={mobhptemp=97}] run data merge entity @s {CustomName:'{"text":"❤ 97%","color":"red"}'}
execute if entity @s[scores={mobhptemp=98}] run data merge entity @s {CustomName:'{"text":"❤ 98%","color":"red"}'}
execute if entity @s[scores={mobhptemp=99}] run data merge entity @s {CustomName:'{"text":"❤ 99%","color":"red"}'}
execute if entity @s[scores={mobhptemp=100}] run data merge entity @s {CustomName:'{"text":"❤ 100%","color":"red"}'}
execute if entity @s[scores={mobhptemp=101..}] run data merge entity @s {CustomName:'{"text":"❤ >100%","color":"gold"}'}
execute if entity @s[scores={mobhptemp=101..},tag=!invaildhealth-max] run tellraw @a[tag=debuger] [{"text": "[ShowHealth] Over 100% for entity ","color": "gray"},{"selector":"@s"},{"text": " (HP: "},{"score":{"name": "@s","objective": "mobhp"}},"/",{"score":{"name": "@s","objective": "maxhp"}},")"]
execute if entity @s[scores={mobhptemp=101..}] run tag @s add invaildhealth-max
execute as @e[tag=!important] run function cmd:lightning

title @a title {"text": "THUNDERSTORM!","color": "gold"}
title @a times 5 100 5

tellraw @a {"text": "\nEVENT: THUNDERSTORM!\nAll non-important entities are struck with radiation lightning\n","color": "red"}
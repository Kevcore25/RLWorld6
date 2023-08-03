tellraw @a[tag=debuger] {"text":"reload.mcfunction ran","color":"gray"}
tellraw @a [{"text":"The server is reloading. Please wait a few seconds\n","color":"red"},{"text":"(Why we reload)","color":"gray`","italic": true,"underlined": true,"clickEvent":{"action":"run_command","value":"/trigger type set 71431040"}}]
reload
tellraw @a {"text":"The server is done reloading","color":"green"}


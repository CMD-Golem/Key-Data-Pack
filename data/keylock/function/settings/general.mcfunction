execute if score @s keylock_settings matches 13 run scoreboard players set #key_name keylock 0
execute if score @s keylock_settings matches 14 run scoreboard players set #key_name keylock 1
execute if score @s keylock_settings matches 15 run scoreboard players set #message keylock 0
execute if score @s keylock_settings matches 16 run scoreboard players set #message keylock 1

# message
tellraw @s {text:"General Settings"}
tellraw @s {text:""}

execute if score #key_name keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 13"}},{text:" Allow name of Key as password",color:"white"}]
execute unless score #key_name keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 14"}},{text:" Allow name of Key as password",color:"white"}]

execute if score #message keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 15"}},{text:" Show locking messages in chat instead of actionbar",color:"white"}]
execute unless score #message keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 16"}},{text:" Show locking messages in chat instead of actionbar",color:"white"}]

tellraw @s [{text:"[ ✎ ]",color:"gray",click_event:{action:"suggest_command",command:"/scoreboard players set #max_player keylock "}},{text:" Maximum number of locked blocks per player",color:"white"}]
tellraw @s [{text:"[ ✎ ]",color:"gray",click_event:{action:"suggest_command",command:"/scoreboard players set #max_world keylock "}},{text:" Maximum number of locked blocks in world",color:"white"}]

tellraw @s {text:""}
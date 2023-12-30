execute if score @s keylock_settings matches 11 run scoreboard players set #damage keylock 0
execute if score @s keylock_settings matches 12 run scoreboard players set #damage keylock 1
execute if score @s keylock_settings matches 13 run scoreboard players set #key_name keylock 0
execute if score @s keylock_settings matches 14 run scoreboard players set #key_name keylock 1
execute if score @s keylock_settings matches 15 run scoreboard players set #message keylock 0
execute if score @s keylock_settings matches 16 run scoreboard players set #message keylock 1

# message
tellraw @s {"text":"General Settings"}
tellraw @s {"text":""}

execute if score #damage keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 11"}},{"text":" Enable Key damage on locking"}]
execute unless score #damage keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 12"}},{"text":" Enable Key damage on locking"}]

execute if score #key_name keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 13"}},{"text":" Allow name of Key as password"}]
execute unless score #key_name keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 14"}},{"text":" Allow name of Key as password"}]

execute if score #message keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 15"}},{"text":" Show locking messages in chat instead of actionbar"}]
execute unless score #message keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 16"}},{"text":" Show locking messages in chat instead of actionbar"}]

# execute if score #message keylock matches 1 run tellraw @s ["",{"text":"[ ⇔ ]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 15"}},{"text":" Show locking messages in chat"}]
# execute unless score #message keylock matches 1 run tellraw @s ["",{"text":"[ ⇔ ]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 16"}},{"text":" Show locking messages in actionbar"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_player keylock "}},{"text":" Maximum number of locked blocks per player"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_world keylock "}},{"text":" Maximum number of locked blocks in world"}]

tellraw @s {"text":""}
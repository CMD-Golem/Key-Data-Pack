execute if score @s keylock_settings matches 41 run scoreboard players set #enable_trapgate keylock 0
execute if score @s keylock_settings matches 42 run scoreboard players set #enable_trapgate keylock 1
execute if score @s keylock_settings matches 43 run scoreboard players set #open_trapgate keylock 0
execute if score @s keylock_settings matches 44 run scoreboard players set #open_trapgate keylock 1
execute if score @s keylock_settings matches 45 run scoreboard players set #auto_trapgate keylock 0
execute if score @s keylock_settings matches 46 run scoreboard players set #auto_trapgate keylock 1

# message
tellraw @s {"text":"Trapdoor and Fence Gate Settings"}
tellraw @s {"text":""}

execute if score #enable_trapgate keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 41"}},{"text":" Enable locking of trapdoors and fence gates"}]
execute unless score #enable_trapgate keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 42"}},{"text":" Enable locking of trapdoors and fence gates"}]

execute if score #open_trapgate keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 43"}},{"text":" Enable automatic opening of trapdoors and fence gates"}]
execute unless score #open_trapgate keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 44"}},{"text":" Enable automatic opening of trapdoors and fence gates"}]

execute if score #auto_trapgate keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 45"}},{"text":" Enable automatic unlocking of trapdoors and fence gates"}]
execute unless score #auto_trapgate keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 46"}},{"text":" Enable automatic unlocking of trapdoors and fence gates"}]

tellraw @s {"text":""}
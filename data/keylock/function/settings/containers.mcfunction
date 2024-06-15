execute if score @s keylock_settings matches 21 run scoreboard players set #enable_containers keylock 0
execute if score @s keylock_settings matches 22 run scoreboard players set #enable_containers keylock 1
execute if score @s keylock_settings matches 23 run scoreboard players set #auto_containers keylock 0
execute if score @s keylock_settings matches 24 run scoreboard players set #auto_containers keylock 1

execute if score @s keylock_settings matches 25 run scoreboard players set #container_type keylock 0
execute if score @s keylock_settings matches 26 run scoreboard players set #container_type keylock 1
execute if score @s keylock_settings matches 27 run scoreboard players set #container_type keylock 2

# message
tellraw @s {"text":"Container Settings"}
tellraw @s {"text":""}

execute if score #enable_containers keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 21"}},{"text":" Enable locking of containers"}]
execute unless score #enable_containers keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 22"}},{"text":" Enable locking of containers"}]

execute if score #auto_containers keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 23"}},{"text":" Enable automatic unlocking of containers"}]
execute unless score #auto_containers keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 24"}},{"text":" Enable automatic unlocking of containers"}]

execute if score #container_type keylock matches 1 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 25"}},{"text":" Unbreakable containers\n"},{"text":"| ⏺ |","color":"green"},{"text":" Replace broken containers with holograms\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 27"}},{"text":" Always display holograms for locked containers"}]
execute if score #container_type keylock matches 2 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 25"}},{"text":" Unbreakable containers\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 26"}},{"text":" Replace broken containers with holograms\n"},{"text":"| ⏺ |","color":"green"},{"text":" Always display holograms for locked containers"}]
execute unless score #container_type keylock matches 1..2 run tellraw @s ["",{"text":"| ⏺ |","color":"green"},{"text":" Unbreakable containers\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 26"}},{"text":" Replace broken containers with holograms\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 27"}},{"text":" Always display holograms for locked containers"}]

tellraw @s {"text":""}
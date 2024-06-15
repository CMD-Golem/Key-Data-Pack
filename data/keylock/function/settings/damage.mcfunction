execute if score @s keylock_settings matches 51 run scoreboard players set #damage keylock 0
execute if score @s keylock_settings matches 52 run scoreboard players set #damage keylock 1
execute if score @s keylock_settings matches 53 run scoreboard players set #damage keylock 2
execute if score @s keylock_settings matches 54 run scoreboard players set #damage keylock 3

# message
tellraw @s {"text":"Key Damage Settings"}
tellraw @s {"text":""}

execute if score #damage keylock matches 1 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 51"}},{"text":" Disable Key damage\n"},{"text":"| ⏺ |","color":"green"},{"text":" Key damage on locking\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 54"}},{"text":" Key damage on unlocking\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 53"}},{"text":" Key damage on every use"}]
execute if score #damage keylock matches 3 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 51"}},{"text":" Disable Key damage\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 52"}},{"text":" Key damage on locking\n"},{"text":"| ⏺ |","color":"green"},{"text":" Key damage on unlocking\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 53"}},{"text":" Key damage on every use"}]
execute if score #damage keylock matches 2 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 51"}},{"text":" Disable Key damage\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 52"}},{"text":" Key damage on locking\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 54"}},{"text":" Key damage on unlocking\n"},{"text":"| ⏺ |","color":"green"},{"text":" Key damage on every use"}]
execute unless score #damage keylock matches 1..3 run tellraw @s ["",{"text":"| ⏺ |","color":"green"},{"text":" Disable Key damage\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 52"}},{"text":" Key damage on locking\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 54"}},{"text":" Key damage on unlocking\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 53"}},{"text":" Key damage on every use"}]

# execute if score #damage keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 11"}},{"text":" Enable Key damage on locking"}]
# execute unless score #damage keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 12"}},{"text":" Enable Key damage on locking"}]

tellraw @s {"text":""}

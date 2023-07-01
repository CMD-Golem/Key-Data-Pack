#max_player: maximum count of locked containers per player
#max_world: maximum count of locked containers per player
#message: show text in chat (1) or actionbar
#damage: disable key damage while locking (1)
#key_name: Key with correct name can unlock chest (1)

#auto_container: automatically unlock blocks when in reach (1)
#container_type: container only as hologramm (2) or as hologramm when it gets broken (1) or is unbreakable

#double_door: always open bough sides of double door (1)
#auto_door: open door when near (1)

execute if score @s keylock_settings matches 1 run scoreboard players set #damage keylock 1
execute if score @s keylock_settings matches 2 run scoreboard players set #damage keylock 0
execute if score @s keylock_settings matches 3 run scoreboard players set #key_name keylock 0
execute if score @s keylock_settings matches 4 run scoreboard players set #key_name keylock 1
execute if score @s keylock_settings matches 5 run scoreboard players set #message keylock 0
execute if score @s keylock_settings matches 6 run scoreboard players set #message keylock 1
execute if score @s keylock_settings matches 7 run scoreboard players set #auto_container keylock 0
execute if score @s keylock_settings matches 8 run scoreboard players set #auto_container keylock 1
execute if score @s keylock_settings matches 9 run scoreboard players set #container_type keylock 0
execute if score @s keylock_settings matches 10 run scoreboard players set #container_type keylock 1
execute if score @s keylock_settings matches 11 run scoreboard players set #container_type keylock 2
execute if score @s keylock_settings matches 12 run scoreboard players set #double_door keylock 0
execute if score @s keylock_settings matches 13 run scoreboard players set #double_door keylock 1
execute if score @s keylock_settings matches 14 run scoreboard players set #auto_door keylock 0
execute if score @s keylock_settings matches 15 run scoreboard players set #auto_door keylock 1
execute if score @s keylock_settings matches 16 run scoreboard players set #auto_open keylock 0
execute if score @s keylock_settings matches 17 run scoreboard players set #auto_open keylock 1

scoreboard players reset @s keylock_settings

tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":"Key Lock Settings","bold":true}
execute unless score #damage keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 1"}},{"text":" Enable Key damage on locking"}]
execute if score #damage keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 2"}},{"text":" Enable Key damage on locking"}]

execute if score #key_name keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 3"}},{"text":" Allow name of Key as password"}]
execute unless score #key_name keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 4"}},{"text":" Allow name of Key as password"}]

execute if score #message keylock matches 1 run tellraw @s ["",{"text":"[ ⇔ ]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 5"}},{"text":" Show locking messages in chat"}]
execute unless score #message keylock matches 1 run tellraw @s ["",{"text":"[ ⇔ ]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 6"}},{"text":" Show locking messages in actionbar"}]

tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_player keylock "},"hoverEvent":{"action":"show_text","contents":"Default: not set (reset scoreboard)"}},{"text":" Maximum count of locked blocks by player"}]
tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_world keylock "},"hoverEvent":{"action":"show_text","contents":"Default: not set (reset scoreboard)"}},{"text":" Maximum count of locked blocks in world"}]

tellraw @s {"text":""}
tellraw @s {"text":"Container Settings"}
execute if score #auto_container keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 7"}},{"text":" Enable automatic unlock of containers", "hoverEvent":{"action":"show_text","contents":"Unlocks when player is withhin 5 blocks of the container and locks it again when player moves away"}}]
execute unless score #auto_container keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 8"}},{"text":" Enable automatic unlock of containers", "hoverEvent":{"action":"show_text","contents":"Unlocks when player is withhin 5 blocks of the container and locks it again when player moves away"}}]

# execute if score #container_type keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 9"}},{"text":" Show container as hologramm"}]
# execute if score #container_type keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 11"}},{"text":" Enable unbreakable container"}]

# execute if score #container_type keylock matches 2 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 9"}},{"text":" Show container as hologramm"}]
# execute if score #container_type keylock matches 2 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 10"}},{"text":" Enable unbreakable container"}]

# execute unless score #container_type keylock matches 1..2 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 11"}},{"text":" Show container as hologramm"}]
# execute unless score #container_type keylock matches 1..2 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 10"}},{"text":" Enable unbreakable container"}]

execute if score #container_type keylock matches 1 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 9"}},{"text":" Unbreakable containers\n"},{"text":"| ⏺ |","color":"green"},{"text":" Replace broken containers with hologram\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 11"}},{"text":" Always show hologram for locked containers"}]
execute if score #container_type keylock matches 2 run tellraw @s ["",{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 9"}},{"text":" Unbreakable containers\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 10"}},{"text":" Replace broken containers with hologram\n"},{"text":"| ⏺ |","color":"green"},{"text":" Always show hologram for locked containers"}]
execute unless score #container_type keylock matches 1..2 run tellraw @s ["",{"text":"| ⏺ |","color":"green"},{"text":" Unbreakable containers\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 10"}},{"text":" Replace broken containers with hologram\n"},{"text":"| ○ |","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 11"}},{"text":" Always show hologram for locked containers"}]

tellraw @s {"text":""}
tellraw @s {"text":"Door Settings"}
execute if score #double_door keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 12"}},{"text":" Always open whole double door", "hoverEvent":{"action":"show_text","contents":"Also applies to unlocked doors"}}]
execute unless score #double_door keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 13"}},{"text":" Always open whole double door", "hoverEvent":{"action":"show_text","contents":"Also applies to unlocked doors"}}]

execute if score #auto_door keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 14"}},{"text":" Enable automatic unlock of doors", "hoverEvent":{"action":"show_text","contents":"Unlocks doors when player is withhin 2 blocks and locks it again when player moves away"}}]
execute unless score #auto_door keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 15"}},{"text":" Enable automatic unlock of doors", "hoverEvent":{"action":"show_text","contents":"Unlocks doors when player is withhin 2 blocks and locks it again when player moves away"}}]

execute if score #auto_open keylock matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 16"}},{"text":" Enable automatic opening of doors", "hoverEvent":{"action":"show_text","contents":"Opens doors when player is withhin 2 blocks and closes it again when player moves away"}}]
execute unless score #auto_open keylock matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 17"}},{"text":" Enable automatic opening of doors", "hoverEvent":{"action":"show_text","contents":"Opens doors when player is withhin 2 blocks and closes it again when player moves away"}}]

tellraw @s {"text":""}
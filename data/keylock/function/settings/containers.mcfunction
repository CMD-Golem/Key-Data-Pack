execute if score @s keylock_settings matches 21 run scoreboard players set #enable_containers keylock 0
execute if score @s keylock_settings matches 22 run scoreboard players set #enable_containers keylock 1
execute if score @s keylock_settings matches 23 run scoreboard players set #auto_containers keylock 0
execute if score @s keylock_settings matches 24 run scoreboard players set #auto_containers keylock 1

execute if score @s keylock_settings matches 25 run scoreboard players set #container_type keylock 0
execute if score @s keylock_settings matches 26 run scoreboard players set #container_type keylock 1
execute if score @s keylock_settings matches 27 run scoreboard players set #container_type keylock 2

execute if score @s keylock_settings matches 24 run function keylock:auto_open/1_run

# message
tellraw @s {text:"Container Settings"}
tellraw @s {text:""}

execute if score #enable_containers keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 21"}},{text:" Enable locking of containers",color:"white"}]
execute unless score #enable_containers keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 22"}},{text:" Enable locking of containers",color:"white"}]

execute if score #auto_containers keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 23"}},{text:" Enable automatic unlocking of containers",color:"white"}]
execute unless score #auto_containers keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 24"}},{text:" Enable automatic unlocking of containers",color:"white"}]

execute if score #container_type keylock matches 1 run tellraw @s [{text:"| ○ |",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 25"}},{text:" Unbreakable containers\n",color:"white"},{text:"| ⏺ |",color:"green"},{text:" Replace broken containers with holograms\n",color:"white"},{text:"| ○ |",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 27"}},{text:" Always display holograms for locked containers",color:"white"}]
execute if score #container_type keylock matches 2 run tellraw @s [{text:"| ○ |",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 25"}},{text:" Unbreakable containers\n",color:"white"},{text:"| ○ |",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 26"}},{text:" Replace broken containers with holograms\n",color:"white"},{text:"| ⏺ |",color:"green"},{text:" Always display holograms for locked containers",color:"white"}]
execute unless score #container_type keylock matches 1..2 run tellraw @s [{text:"| ⏺ |",color:"green"},{text:" Unbreakable containers\n",color:"white"},{text:"| ○ |",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 26"}},{text:" Replace broken containers with holograms\n",color:"white"},{text:"| ○ |",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 27"}},{text:" Always display holograms for locked containers",color:"white"}]

tellraw @s {text:""}
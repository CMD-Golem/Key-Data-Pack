execute if score @s keylock_settings matches 31 run scoreboard players set #enable_doors keylock 0
execute if score @s keylock_settings matches 32 run scoreboard players set #enable_doors keylock 1
execute if score @s keylock_settings matches 33 run scoreboard players set #double_doors keylock 0
execute if score @s keylock_settings matches 34 run scoreboard players set #double_doors keylock 1
execute if score @s keylock_settings matches 35 run scoreboard players set #open_doors keylock 0
execute if score @s keylock_settings matches 36 run scoreboard players set #open_doors keylock 1
execute if score @s keylock_settings matches 37 run scoreboard players set #auto_doors keylock 0
execute if score @s keylock_settings matches 38 run scoreboard players set #auto_doors keylock 1

# message
tellraw @s {text:"Door Settings"}
tellraw @s {text:""}

execute if score #enable_doors keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 31"}},{text:" Enable locking of doors",color:"white"}]
execute unless score #enable_doors keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 32"}},{text:" Enable locking of doors",color:"white"}]

execute if score #double_doors keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 33"}},{text:" Open entire double door",color:"white"}]
execute unless score #double_doors keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 34"}},{text:" Open entire double door",color:"white"}]

execute if score #open_doors keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 35"}},{text:" Enable automatic opening of doors",color:"white"}]
execute unless score #open_doors keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 36"}},{text:" Enable automatic opening of doors",color:"white"}]

execute if score #auto_doors keylock matches 1 run tellraw @s [{text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 37"}},{text:" Enable automatic unlocking of doors",color:"white"}]
execute unless score #auto_doors keylock matches 1 run tellraw @s [{text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/scoreboard players set @s keylock_settings 38"}},{text:" Enable automatic unlocking of doors",color:"white"}]

tellraw @s {text:""}
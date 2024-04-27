scoreboard players set #password_check keylock 1

data modify storage keylock:password password set from entity @e[tag=keylock_entity,distance=..0.1,limit=1] data.password
execute store success score #has_name keylock run data get entity @s SelectedItem.components.minecraft:custom_name
execute if score #has_name keylock matches 1 store success score #password_check keylock run data modify storage keylock:password password set from entity @s SelectedItem.components.minecraft:custom_name

execute unless score #password_check keylock matches 1 run scoreboard players set #execute_code keylock 20
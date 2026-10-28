scoreboard players set #password_check keylock 1

execute store success score #container_has_pw keylock run data modify storage keylock:password password set from entity @e[tag=keylock_locked,distance=..0.1,limit=1] data.password
execute store success score #item_has_pw keylock run data get entity @s SelectedItem.components.minecraft:custom_name
execute if score #container_has_pw keylock matches 1 if score #item_has_pw keylock matches 1 store success score #password_check keylock run data modify storage keylock:password password set from entity @s SelectedItem.components.minecraft:custom_name

execute unless score #password_check keylock matches 1 run scoreboard players set #execute_code keylock 20
data remove storage keylock:password password
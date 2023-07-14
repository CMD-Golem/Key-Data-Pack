scoreboard players set #toggle_auto keylock 1

execute if score #double_door keylock matches 1 run function keylock:door/double/detect

scoreboard players set #toggle_auto keylock 2

execute summon marker run function keylock:door/double/toggle

scoreboard players reset #toggle_auto keylock
scoreboard players set #toggle_auto keylock 1

function keylock:door/double/detect

scoreboard players set #toggle_auto keylock 2

execute summon marker run function keylock:door/double/toggle

scoreboard players reset #toggle_auto keylock
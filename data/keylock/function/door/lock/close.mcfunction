# as keylock_door at @s
function keylock:door/replace_broken with entity @s data.block
kill @e[tag=keylock_autodoor,distance=..0.1]
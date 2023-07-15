function keylock:door/replace_broken
kill @e[tag=keylock_autodoor,distance=..0.1]
tag @s remove keylock_closedoor
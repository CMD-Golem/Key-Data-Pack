# as keylock_trapgate at @s
function keylock:trapgate/replace_broken with entity @s data.block
kill @e[tag=keylock_autogate,distance=..0.1]
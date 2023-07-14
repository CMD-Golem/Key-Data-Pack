data merge entity @s {data:{open:"false"}}
function keylock:door/lock/store
function keylock:door/replace_broken
kill @s
kill @e[tag=keylock_autodoor,distance=..0.1]
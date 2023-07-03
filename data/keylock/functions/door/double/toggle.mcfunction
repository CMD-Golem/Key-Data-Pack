execute if predicate keylock:get_type/open run data merge entity @s {data:{open:"false"}}
execute unless predicate keylock:get_type/open run data merge entity @s {data:{open:"true"}}

execute if entity @s[tag=keylock_in_door] unless predicate keylock:get_type/open run data merge entity @s {data:{open:"false"}}
execute if entity @s[tag=keylock_in_door] if predicate keylock:get_type/open run data merge entity @s {data:{open:"true"}}

function keylock:door/lock/store
function keylock:door/replace_broken
kill @s
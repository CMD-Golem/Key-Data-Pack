tag @s add keylock_autogate

function keylock:trapgate/lock/store

execute if predicate keylock:get_type/open run data merge entity @s {data:{open:"false"}}
execute if predicate keylock:get_type/closed run data merge entity @s {data:{open:"true"}}

execute unless block ~ ~ ~ #keylock:air run function keylock:trapgate/replace_broken

execute unless score #execute_code keylock matches 10.. run tag @s add keylock_must_kill
execute if score #toggle_auto keylock matches 1.. run tag @s add keylock_autodoor

execute if predicate keylock:get_type/open run data merge entity @s {data:{block:{open:",open=false"}}}
execute if predicate keylock:get_type/closed run data merge entity @s {data:{block:{open:",open=true"}}}

function keylock:door/lock/store
execute unless block ~ ~ ~ #keylock:air run function keylock:door/replace_broken with entity @s data.block

execute unless score #toggle_auto keylock matches 1.. run kill @s

execute positioned ~ ~-1 ~ if entity @e[tag=keylock_replacedby_support,distance=..0.1] run return 0

execute if score #execute_code keylock matches 10.. run tag @s add keylock_autogate
execute if score #execute_code keylock matches 10.. run function keylock:trapgate/lock/store

execute if predicate keylock:get_type/open run data merge entity @s {data:{block:{open:"false"}}}
execute if predicate keylock:get_type/closed run data merge entity @s {data:{block:{open:"true"}}}

execute unless block ~ ~ ~ #keylock:air run function keylock:trapgate/replace_broken with entity @s data.block

execute unless score #execute_code keylock matches 10.. run tag @s add keylock_must_kill
execute unless score #execute_code keylock matches 10.. unless entity @s[tag=keylock_replace_support] run kill @s
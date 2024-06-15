execute if score #execute_code keylock matches 10.. run tag @s add keylock_autogate
execute if score #execute_code keylock matches 10.. run data merge entity @s {data:{block:{facing:"",open:"",half:""}}}
execute if score #execute_code keylock matches 10.. run function keylock:trapgate/lock/store

execute if predicate keylock:get_type/open run data merge entity @s {data:{block:{open:",open=false"}}}
execute if predicate keylock:get_type/closed run data merge entity @s {data:{block:{open:",open=true"}}}

execute unless block ~ ~ ~ #keylock:air run function keylock:trapgate/replace_broken with entity @s data.block

execute unless score #execute_code keylock matches 10.. run kill @s
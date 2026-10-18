execute if score #execute_code keylock matches 10.. run tag @s add keylock_autogate
execute if score #execute_code keylock matches 10.. run data merge entity @s {data:{block:{facing:"",open:"",half:""}}}
execute if score #execute_code keylock matches 10.. run function keylock:trapgate/lock/store

execute unless block ~ ~ ~ #keylock:air run function keylock:trapgate/replace_broken with entity @s data.block

execute unless score #execute_code keylock matches 10.. run kill @s
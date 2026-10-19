# as new marker at door
execute if score #execute_code keylock matches 10.. run tag @s add keylock_autogate
execute if score #execute_code keylock matches 10.. run data merge entity @s {data:{block:{open:",open=true",half:""}}}
execute if score #execute_code keylock matches 20 as @e[tag=keylock_trapgate,distance=..0.1] run tag @s add keylock_autounlocked

execute unless score #execute_code keylock matches 10.. run data merge entity @s {data:{block:{open:",open=false",half:""}}}

function keylock:trapgate/lock/store
execute unless block ~ ~ ~ #keylock:air run function keylock:trapgate/replace_broken with entity @s data.block

# kill on close
execute unless score #execute_code keylock matches 10.. run kill @s
execute unless score #execute_code keylock matches 10.. as @e[tag=keylock_trapgate,distance=..0.1] run tag @s remove keylock_autounlocked
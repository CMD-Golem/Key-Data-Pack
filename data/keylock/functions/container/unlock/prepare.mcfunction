execute unless block ~ ~ ~ #keylock:containers run function keylock:container/unlock/display
execute if block ~ ~ ~ #keylock:containers run function keylock:container/unlock/unlock

tag @s add keylock_autounlocked

execute if score #execute_code keylock matches 20 unless entity @s[tag=keylock_replace_support] run kill @s
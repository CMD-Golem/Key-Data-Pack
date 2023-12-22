execute if score #execute_code keylock matches 20 unless block ~ ~ ~ #keylock:containers run tag @s add keylock_must_kill
execute unless block ~ ~ ~ #keylock:containers run function keylock:container/replace_broken with entity @s data.block

function keylock:container/unlock/unlock

tag @s add keylock_autounlocked
tag @s remove keylock_isdisplay

execute positioned ~ ~0.25 ~ run kill @e[tag=keylock_display,distance=..0.1]
execute if score #execute_code keylock matches 20 run kill @s

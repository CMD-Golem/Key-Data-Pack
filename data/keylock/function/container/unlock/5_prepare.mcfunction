# as keylock_container at @s
execute unless block ~ ~ ~ #keylock:containers run function keylock:container/replace/2_setblock with entity @s data.block

execute unless entity @s[tag=keylock_autounlocked] run function keylock:container/unlock/6_store_data with entity @s data.Pos

tag @s add keylock_unlocked
tag @s remove keylock_isdisplay

execute positioned ~ ~0.25 ~ run kill @e[tag=keylock_display,distance=..0.1]
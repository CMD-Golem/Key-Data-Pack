# replace door when broken
execute if entity @s[tag=!keylock_replacedby_support] at @s unless block ~ ~ ~ #keylock:trapgate run function keylock:trapgate/replace_broken
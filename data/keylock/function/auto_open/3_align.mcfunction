# as @a at block
scoreboard players set #execute_code keylock 10

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=keylock_autoopened,distance=..0.1] unless entity @e[tag=keylock_autounlocked,distance=..0.1] run function keylock:auto_open/4_check_pw
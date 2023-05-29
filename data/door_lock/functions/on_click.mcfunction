#say clicked thing
advancement revoke @s only door_lock:click_block

execute as @e[type=marker,tag=lockable,distance=..5] at @s unless blocks ~ ~ ~ ~ ~1 ~ ~ -64 ~ all run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=marker,tag=lockable,distance=..5] at @s unless blocks ~ ~ ~ ~ ~1 ~ ~ -64 ~ all run clone ~ -64 ~ ~ -63 ~ ~ ~ ~
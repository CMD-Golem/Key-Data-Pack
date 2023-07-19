scoreboard objectives add keylock dummy
scoreboard objectives add keylock_craft dummy
scoreboard objectives add keylock_count dummy
scoreboard objectives add keylock_settings dummy
scoreboard objectives add keylock_use minecraft.used:minecraft.warped_fungus_on_a_stick

#keylock: player: uuid | entity: owner uuid
#keylock_craft: player: crafting counter, damage, repair | entity: rotation
#keylock_use: player: use count of key | entity: type
#keylock_count: player: count of locked chests | entity: last checked autounlock uuid
#keylock_settings: player: change settings

#default settings
execute unless score #default keylock matches 1 run scoreboard players set #damage keylock 1
execute unless score #default keylock matches 1 run scoreboard players set #enable_containers keylock 1

execute unless score #default keylock matches 1 run scoreboard players set #default keylock 1
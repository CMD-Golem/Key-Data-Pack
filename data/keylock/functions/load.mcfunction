scoreboard objectives add keylock dummy
scoreboard objectives add keylock_craft dummy
scoreboard objectives add keylock_count dummy
scoreboard objectives add keylock_use minecraft.used:minecraft.warped_fungus_on_a_stick

execute unless score #max keylock matches 1.. run scoreboard players set #max keylock 1000

#keylock: player: uuid | cloud: owner uuid
#keylock_craft: player: crafting counter, damage, repair | cloud: rotation
#keylock_count: player: count of locked chests
#keylock_use: player: use count of key



#max: maximum count of locked containers
#message: show text in chat (1) or actionbar
#damage: key gets damage while locking (1)
#key_name: Key with correct name can unlock chest (1)
#container_type: container only as hologramm (2) or as hologramm when it gets broken (1) or is unbreakable
#auto_key: automatically unlock containers when in reach (1)

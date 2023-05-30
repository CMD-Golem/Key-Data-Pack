scoreboard objectives add keylock dummy
scoreboard objectives add keylock_craft dummy
scoreboard objectives add keylock_count dummy
scoreboard objectives add keylock_use minecraft.used:minecraft.warped_fungus_on_a_stick

#max: maximum count of locked containers
#message: show text in chat (1) or actionbar
#damage: key gets damage while locking
#key_name: Key with correct name can unlock chest
#container_type: container only as hologramm (2) or as hologramm when it gets broken (1) or is unbreakable
#execute align xyz run summon block_display ~0.25 ~0.25 ~0.25 {brightness:{sky:0,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:chest"}}
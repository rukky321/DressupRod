#> dressup_rod:rod/texts/show_setting
#
# @within dressup_rod:rod/**


function dressup_rod:rod/texts/set_storage

execute unless score @s DR_mode matches 5..6 run title @s actionbar [{"text":"Mode: \""},{"nbt":"texts.tmp.mode.text","storage":"dressup_rod:","interpret":true},{"text":"\" Set: \""},{"nbt":"texts.tmp.data.text","storage":"dressup_rod:","interpret":true},{"text":"\" Slot: \""},{"nbt":"texts.tmp.slot.text","storage":"dressup_rod:","interpret":true},{"text":"\""}]
execute if score @s DR_mode matches 5..6 run title @s actionbar [{"text":"Mode: \""},{"nbt":"texts.tmp.mode.text","storage":"dressup_rod:","interpret":true},{"text":"\" Storage: \""},{"score":{"name":"@s","objective":"DR_saves"}},{"text":"\" Slot: \""},{"nbt":"texts.tmp.slot.text","storage":"dressup_rod:","interpret":true},{"text":"\""}]

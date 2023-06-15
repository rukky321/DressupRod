#> dressup_rod:rod/texts/show_result
#
# @within dressup_rod:rod/**

#変更に成功した場合
execute if score #result DR matches 0 run function dressup_rod:rod/texts/set_storage
execute if score #result DR matches 0 if score @s DR_mode matches 5 run title @s actionbar [{"text":"Saved "},{"selector":"@e[tag=DR_target,sort=nearest,limit=1]"},{"text":"'s "},{"nbt":"texts.tmp.slot.text","storage":"dressup_rod:","interpret":true},{"text":" data to storage \""},{"score":{"name":"@s","objective":"DR_saves"}},{"text":"\""}]
execute if score #result DR matches 0 if score @s DR_mode matches 6 run title @s actionbar [{"text":"Set "},{"selector":"@e[tag=DR_target,sort=nearest,limit=1]"},{"text":"'s "},{"nbt":"texts.tmp.slot.text","storage":"dressup_rod:","interpret":true},{"text":" data to storage \""},{"score":{"name":"@s","objective":"DR_saves"}},{"text":"\""}]
execute if score #result DR matches 0 unless score @s DR_mode matches 5..6 run title @s actionbar [{"text":"Set "},{"selector":"@e[tag=DR_target,sort=nearest,limit=1]"},{"text":"'s "},{"nbt":"texts.tmp.slot.text","storage":"dressup_rod:","interpret":true},{"text":" "},{"nbt":"texts.tmp.mode.text","storage":"dressup_rod:","interpret":true},{"text":" to \""},{"nbt":"texts.tmp.data.text","storage":"dressup_rod:","interpret":true},{"text":"\""}]

#対象がいなかった場合
execute if score #result DR matches 1 run title @s actionbar {"text":"There is no target"}

#変更に失敗（データが変わらなかった場合）
execute if score #result DR matches 2 if score @s DR_mode matches 5 run title @p actionbar [{"text":"Failed to change storage "},{"score":{"name":"@s","objective":"DR_saves"}}]
execute if score #result DR matches 2 unless score @s DR_mode matches 5 run title @s actionbar [{"text":"Failed to change "},{"selector":"@e[tag=DR_target,sort=nearest,limit=1]"},{"text":"'s data"}]

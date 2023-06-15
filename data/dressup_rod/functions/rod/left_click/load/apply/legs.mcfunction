#> dressup_rod:rod/left_click/load/apply/legs
# 
# @within dressup_rod:rod/left_click/load/**

#防具たてにデータを一時的に保存
data modify entity @s ArmorItems[1] set from storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems[1]

#対象のデータを変更
item replace entity @e[tag=DR_dc_target,sort=nearest,limit=1] armor.legs from entity @s armor.legs

#防具たてをキル
kill @s
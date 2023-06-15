#> dressup_rod:rod/left_click/load/apply/armor
# 
# @within dressup_rod:rod/left_click/load/**

#防具たてにデータを一時的に保存
data modify entity @s ArmorItems set from storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems

#対象のデータを変更
item replace entity @e[tag=DR_dc_target,sort=nearest,limit=1] armor.head from entity @s armor.head
item replace entity @e[tag=DR_dc_target,sort=nearest,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[tag=DR_dc_target,sort=nearest,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[tag=DR_dc_target,sort=nearest,limit=1] armor.feet from entity @s armor.feet

#防具たてをキル
kill @s
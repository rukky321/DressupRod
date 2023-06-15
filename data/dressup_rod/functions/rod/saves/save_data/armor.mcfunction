#> dressup_rod:rod/saves/save_data/armor
# 
# @within dressup_rod:rod/saves/**

#防具たてにデータを一時的に保存
item replace entity @s armor.head from entity @e[tag=DR_target,sort=nearest,limit=1] armor.head
item replace entity @s armor.chest from entity @e[tag=DR_target,sort=nearest,limit=1] armor.chest
item replace entity @s armor.legs from entity @e[tag=DR_target,sort=nearest,limit=1] armor.legs
item replace entity @s armor.feet from entity @e[tag=DR_target,sort=nearest,limit=1] armor.feet

#保存先のストレージのArmorItemsを更新
data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems set from entity @s ArmorItems

#防具たてをキル
kill @s
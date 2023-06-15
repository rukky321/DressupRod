#> dressup_rod:rod/saves/save_data/chest
# 
# @within dressup_rod:rod/saves/**

#防具たてにデータを一時的に保存
item replace entity @s armor.chest from entity @e[tag=DR_target,sort=nearest,limit=1] armor.chest

#保存先のストレージのArmorItemsを更新
data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems[2] set from entity @s ArmorItems[2]

#防具たてをキル
kill @s
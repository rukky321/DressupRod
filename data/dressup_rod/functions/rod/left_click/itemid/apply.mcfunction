#> dressup_rod:rod/left_click/itemid/apply
#
# @within dressup_rod:rod/left_click/**

# DR_itemidのスコアからどの素材に変更するか、さらにDR_apply_toスコアに応じて適用する部位を選択し、関数実行
execute if score @s DR_itemid matches 0 run function dressup_rod:rod/left_click/itemid/leather
execute if score @s DR_itemid matches 1 run function dressup_rod:rod/left_click/itemid/golden
execute if score @s DR_itemid matches 2 run function dressup_rod:rod/left_click/itemid/chainmail
execute if score @s DR_itemid matches 3 run function dressup_rod:rod/left_click/itemid/iron
execute if score @s DR_itemid matches 4 run function dressup_rod:rod/left_click/itemid/diamond
execute if score @s DR_itemid matches 5 run function dressup_rod:rod/left_click/itemid/netherite
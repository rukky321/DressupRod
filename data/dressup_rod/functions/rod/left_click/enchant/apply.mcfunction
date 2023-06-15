#> dressup_rod:rod/left_click/enchant/apply
#
# @within dressup_rod:rod/left_click/**

# DR_apply_toスコアに応じて適用する部位を選択し、エンチャントを消すのかつけるのかを判断して関数実行
execute if score @s DR_enchant matches 0 run function dressup_rod:rod/left_click/enchant/remove
execute if score @s DR_enchant matches 1 run function dressup_rod:rod/left_click/enchant/apply2

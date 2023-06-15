#> dressup_rod:rod/left_click/pattern/apply
#
# @within dressup_rod:rod/left_click/**

# DR_patternのスコアの値から模様を何に変更するかを調べ、さらにDR_apply_toスコアに応じて適用する部位を選択し、関数実行
execute if score @s DR_pattern matches 0..7 run function dressup_rod:rod/left_click/pattern/search/0_7
execute if score @s DR_pattern matches 8..15 run function dressup_rod:rod/left_click/pattern/search/8_15
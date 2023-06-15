#> dressup_rod:rod/left_click/color/apply
#
# @within dressup_rod:rod/left_click/**

# DR_colorのスコアの値から何色に変更するかを調べ、さらにDR_apply_toスコアに応じて適用する部位を選択し、関数実行
execute if score @s DR_color matches 0..7 run function dressup_rod:rod/left_click/color/search/0_7
execute if score @s DR_color matches 8..15 run function dressup_rod:rod/left_click/color/search/8_15
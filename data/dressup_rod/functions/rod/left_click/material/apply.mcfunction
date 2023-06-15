#> dressup_rod:rod/left_click/material/apply
#
# @within dressup_rod:rod/left_click/**

# DR_materialのスコアからどの素材に変更するか、さらにDR_apply_toスコアに応じて適用する部位を選択し、関数実行
execute if score @s DR_material matches 0..4 run function dressup_rod:rod/left_click/material/search/0_4
execute if score @s DR_material matches 5..9 run function dressup_rod:rod/left_click/material/search/5_9
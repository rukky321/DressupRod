#> dressup_rod:rod/drop/run
#
# @within dressup_rod:tick

# 対象を自分に設定してleftclickの関数を使い回す
tag @s add DR_dc_target
execute unless score @s DR_mode matches 5 run function dressup_rod:rod/left_click/run
execute if score @s DR_mode matches 5 run function dressup_rod:rod/left_click/save/apply
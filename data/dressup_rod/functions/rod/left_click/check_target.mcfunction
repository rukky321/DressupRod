#> dressup_rod:rod/left_click/check_target
#
# @within dressup_rod:rod/tick

# プレイヤの視点の先にエンティティがいるか確認
execute at @s anchored eyes positioned ^ ^ ^ run function dressup_rod:rod/check/check_direction

# エンティティがいなければ失敗音を出し、テキスト表示
execute unless entity @e[tag=DR_dc_target] run playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 1 2 1
execute unless entity @e[tag=DR_dc_target] run scoreboard players set #result DR 1
execute unless entity @e[tag=DR_dc_target] run function dressup_rod:rod/texts/show_result

# エンティティがいればデータを編集する操作を行う
# DR_modeスコアが5の時は編集対象がエンティティではなくストレージなのでそれぞれ分けて行う
execute if entity @e[tag=DR_dc_target] unless score @s DR_mode matches 5 run function dressup_rod:rod/left_click/run
execute if entity @e[tag=DR_dc_target] if score @s DR_mode matches 5 run function dressup_rod:rod/left_click/save/apply

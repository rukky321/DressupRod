#> dressup_rod:set_scores
#	一部データを変えたい場合は好きな値を編集してからこの関数を実行してください
# @within dressup_rod:**

# 変更可能なスコア
# <score holder> <score name> <description>
# #max DR_saves プレイヤが保存できるデータの最大数
# #max DR_history プレイヤがundo操作で戻すことができる最大回数
# #dc_distance DR ロッドで編集できるモブの最大距離


# rod関係の各スコアの最大値を設定
scoreboard players set #max DR_mode 6
scoreboard players set #max DR_apply_to 4
scoreboard players set #max DR_pattern 15
scoreboard players set #max DR_material 9
scoreboard players set #max DR_color 15
scoreboard players set #max DR_itemid 5
scoreboard players set #max DR_enchant 1
scoreboard players set #max DR_saves 15
scoreboard players set #max DR_history 30

#ロッドのリーチを設定
scoreboard players set #dc_distance DR 10
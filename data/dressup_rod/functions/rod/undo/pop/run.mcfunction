#> dressup_rod:rod/undo/pop/run
# 
# @within dressup_rod:rod/undo/pop

#前回の操作がエンティティに対する操作であったのかを調べる
execute store result score #DR DR run data get storage dressup_rod: players[0][0][0][0][0].undo[0].IsEntity

#エンティティに対する操作であったなら対象となるUUIDが存在するかを調べ、対象のデータを元に戻す。
# 対象が存在しなければ score #undo_result DR の値を2に設定
execute unless score #DR DR matches 0 run function dressup_rod:rod/undo/pop/entitydata

#ストレージに対する操作であったなら、変更したsavesストレージの番号を取り出し、savesのデータを元に戻す
execute if score #DR DR matches 0 run function dressup_rod:rod/undo/pop/storage

# undoストレージの先頭データを削除
data remove storage dressup_rod: players[0][0][0][0][0].undo[0]

# スコアをリセット
scoreboard players reset #DR DR
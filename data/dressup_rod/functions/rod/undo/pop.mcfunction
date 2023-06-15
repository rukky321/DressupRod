#> dressup_rod:rod/undo/pop
#
#	undoストレージの先頭に入っている情報から前回の変更を調べ、変更を元に戻す
#
# @output score #undo_result DR (success: 0 , no history : 1 , no target : 2)
# @output score #undo_modifiedstorage DR (the id of saves modified)
# @within dressup_rod:rod/**

# まず、outputとなるスコアをリセットしておく
scoreboard players reset #undo_result DR

# まず個別ストレージを呼び出す。
function dressup_rod:storage/get

# undoストレージ内に要素が入っていなければ、#undo_result DR スコアを1に設定
execute unless data storage dressup_rod: players[0][0][0][0][0].undo[0] run scoreboard players set #undo_result DR 1

# undoストレージ内に要素が入ってれば、前回の操作を調べ、実際にデータを元に戻す
# その際、データを戻す対象が既に死んでいるなどで存在しない場合には #undo_result DR スコアを2に設定
execute if data storage dressup_rod: players[0][0][0][0][0].undo[0] run function dressup_rod:rod/undo/pop/run


# 変更に成功していれば、#undo_result DR スコアを0に設定
execute unless score #undo_result DR matches 1..2 run scoreboard players set #undo_result DR 0 



#> dressup_rod:rod/undo/pop/storage
#
# @within dressup_rod:rod/undo/pop/run

# まず、現在のプレイヤのDR_savesの値を保存し、代わりに元に戻すストレージの番号を代入する
scoreboard players operation #undo_modifiedstorage DR = @s DR_saves
execute store result score @s DR_saves run data get storage dressup_rod: players[0][0][0][0][0].undo[0].Identifier

# プレイヤのDR_savesの値とidが等しいデータがdressup_rod: players[0][0][0][0][0].saves[0]にくるように移動。
function dressup_rod:rod/saves/move

# undo.ApplyToの値を取り出し変更された部位を調べ、その値に応じてデータを戻す
execute store result score #DR_ DR run data get storage dressup_rod: players[0][0][0][0][0].undo[0].ApplyTo
execute if score #DR_ DR matches 0 run data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems set from storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems
execute if score #DR_ DR matches 1 run data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems[3] set from storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems[3]
execute if score #DR_ DR matches 2 run data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems[2] set from storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems[2]
execute if score #DR_ DR matches 3 run data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems[1] set from storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems[1]
execute if score #DR_ DR matches 4 run data modify storage dressup_rod: players[0][0][0][0][0].saves[0].ArmorItems[0] set from storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems[0]

# undo[0].ArmorItemsが存在しない場合（操作によって新しくセーブデータが作られた場合が当てはまるセーブデータを削除する）
execute unless data storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems run data remove storage dressup_rod: players[0][0][0][0][0].saves[0]

#プレイヤのDR_savesの値を元に戻す
scoreboard players operation @s DR_saves >< #undo_modifiedstorage DR

#スコアをリセット
scoreboard players reset #DR_ DR

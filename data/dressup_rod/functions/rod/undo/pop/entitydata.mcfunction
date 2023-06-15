#> dressup_rod:rod/undo/pop/entitydata
#
# @within dressup_rod:rod/undo/run

# 変更をかけたエンティティのUUID[0]を取得
execute store result score #DR_ DR run data get storage dressup_rod: players[0][0][0][0][0].undo[0].Identifier

# UUID[0]を持つエンティティが存在すればDR_targetタグを付与する
# 存在しなければ score #undo_result DR の値を2に設定
execute as @e[tag=DR_modified] run function dressup_rod:rod/undo/pop/check_existence
execute unless entity @e[tag=DR_target] run scoreboard players set #undo_result DR 2

# 対象が存在していれば、変更をかけた部位を取得し、それに応じて対象のデータを元に戻す
execute as @e[tag=DR_target] run function dressup_rod:rod/undo/pop/undo_armor

#スコアをリセット
scoreboard players reset #DR_ DR
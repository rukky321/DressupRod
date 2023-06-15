#> dressup_rod:rod/undo/add
#
#	@output score #undo_result 
# @reads data entity @e[tag=tag=DR_undo_container] ArmorItems
#
# @within dressup_rod:rod/**

# 実行者の個別ストレージのundoの先頭に履歴を保存し最大保存数を超えた履歴は削除する
# 保存内容は、1.どの部位の変更だったか(ApplyTo : 0~4) , 2.エンティティに対する変更であったのか(IsEntity : 1or0) , 3.変更前はどんな装備だったか(ArmorItems:[{},{},{},{}]) , 4.変更対象のUUID[0] or ストレージ番号 (Identifier : (uuid) or 0~15)

#変更対象にDR_targetタグがついており、DR_undo_containerタグがついた防具たてに変更前の状態の装備を保存しておく

# まず個別ストレージを呼び出し、先頭に空のデータを追加
function dressup_rod:storage/get
data modify storage dressup_rod: players[0][0][0][0][0].undo prepend value {}

# どの部位の変更かを保存
execute store result storage dressup_rod: players[0][0][0][0][0].undo[0].ApplyTo int 1 run scoreboard players get @s DR_apply_to

# ロッドがsaveモードであったならばストレージに対する変更であるので、ストレージ番号を保存しIsEntityを0に設定
execute if score @s DR_mode matches 5 store result storage dressup_rod: players[0][0][0][0][0].undo[0].Identifier int 1 run scoreboard players get @s DR_saves
execute if score @s DR_mode matches 5 run data modify storage dressup_rod: players[0][0][0][0][0].undo[0].IsEntity set value 0

#それ以外のモードではエンティティに対する変更であるので、UUID[0]を保存し、IsEntityを1に設定
execute unless score @s DR_mode matches 5 store result storage dressup_rod: players[0][0][0][0][0].undo[0].Identifier int 1 run data get entity @e[tag=DR_target,limit=1] UUID[0]
execute unless score @s DR_mode matches 5 run data modify storage dressup_rod: players[0][0][0][0][0].undo[0].IsEntity set value 1

# DR_undo_containerタグのついたarmor_standに変更前のデータが保存されているので、ArmorItemsのデータをストレージに保存
execute if entity @e[tag=DR_undo_container,limit=1] run data modify storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems set from entity @e[tag=DR_undo_container,limit=1] ArmorItems

# 最大保存数を超えた時に一番古い履歴を削除
execute store result score #DR DR run data get storage dressup_rod: players[0][0][0][0][0].undo
execute if score #max DR_history < #DR DR run data remove storage dressup_rod: players[0][0][0][0][0].undo[-1]

#スコアをリセット
scoreboard players reset #DR DR

#使用した防具立てをキル
kill @e[tag=DR_undo_container]
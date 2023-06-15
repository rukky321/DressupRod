#> dressup_rod:storage/get
#	実行者のストレージが先頭にくるようにstorage dressup_rod: players[4][4][4][4][4] を動かす
# この関数の実行後にstorage dressup_rod: players[0][0][0][0][0]にアクセスすることで個別のデータを取り出せる
# @within dressup_rod:**

# まず前回動かしたストレージを元の整列済みの状態に戻す
function dressup_rod:storage/restore

# 目標地点のIDを取得する。IDが割り振られていなければ割り振る
execute unless score @s DR_storageID matches -2147483648..2147483647 run function dressup_rod:storage/setid
scoreboard players operation #DR_ DR = @s DR_storageID

# 目標地点のIDの4進数表記abcdeの各位の数を求め、その分だけ配列を動かしていく
# その際、元の整列済み配列に戻すために動かす必要がある数を予め求めておく

# a(4^4の位)
scoreboard players operation #DR DR = #DR_ DR
scoreboard players operation #DR DR /= #256 DR
scoreboard players operation #DR_ DR %= #256 DR
scoreboard players operation #DR_A DR = #4 DR
scoreboard players operation #DR_A DR -= #DR DR
scoreboard players operation #DR_A DR %= #4 DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/a

# b(4^3の位)
scoreboard players operation #DR DR = #DR_ DR
scoreboard players operation #DR DR /= #64 DR
scoreboard players operation #DR_ DR %= #64 DR
scoreboard players operation #DR_B DR = #4 DR
scoreboard players operation #DR_B DR -= #DR DR
scoreboard players operation #DR_B DR %= #4 DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/b

# c(4^2の位)
scoreboard players operation #DR DR = #DR_ DR
scoreboard players operation #DR DR /= #16 DR
scoreboard players operation #DR_ DR %= #16 DR
scoreboard players operation #DR_C DR = #4 DR
scoreboard players operation #DR_C DR -= #DR DR
scoreboard players operation #DR_C DR %= #4 DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/c

# d(4^1の位)
scoreboard players operation #DR DR = #DR_ DR
scoreboard players operation #DR DR /= #4 DR
scoreboard players operation #DR_ DR %= #4 DR
scoreboard players operation #DR_D DR = #4 DR
scoreboard players operation #DR_D DR -= #DR DR
scoreboard players operation #DR_D DR %= #4 DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/d

# e(4^0の位)
scoreboard players operation #DR DR = #DR_ DR
scoreboard players operation #DR_E DR = #4 DR
scoreboard players operation #DR_E DR -= #DR DR
scoreboard players operation #DR_E DR %= #4 DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/e

# 使用したスコアをリセットする
scoreboard players reset #DR DR
scoreboard players reset #DR_ DR







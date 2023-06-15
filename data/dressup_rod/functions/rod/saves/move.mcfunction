#> dressup_rod:rod/saves/move
#
# @output score #saves_move_result DR (success : 1 , failure : 0)
# @within dressup_rod:rod/**


# 個別ストレージの呼び出し
function dressup_rod:storage/get

# セーブデータの要素数を取得する
execute store result score #size DR run data get storage dressup_rod: players[0][0][0][0][0].saves

# 出力用のスコアを1にしておく
scoreboard players set #saves_move_result DR 1

# 要素数が0なら#saves_move_result DRを0に変更
execute if score #size DR matches 0 run scoreboard players set #saves_move_result DR 0

# 要素数が2以上ならプレイヤのDR_savesスコアの値を持つデータがdressup_rod: players[0][0][0][0][0].saves[0] にくるように線形探索する
execute if score #size DR matches 2.. run scoreboard players operation #move DR = #size DR
execute if score #size DR matches 2.. store result score #check DR run data get storage dressup_rod: players[0][0][0][0][0].saves[0].id
execute if score #size DR matches 2.. unless score #check DR = @s DR_saves if score #move DR matches 2.. run function dressup_rod:rod/saves/move_loop

# もし、先頭要素のIDとプレイヤのDR_savesスコアの値が違えば、そのIDを持つ要素が存在しなかったということになるので#saves_move_result DRを0に変更
# 同じなら#saves_move_result DRを1に変更
execute if score #size DR matches 1.. store result score #check DR run data get storage dressup_rod: players[0][0][0][0][0].saves[0].id
execute if score #size DR matches 1.. unless score #check DR = @s DR_saves run scoreboard players set #saves_move_result DR 0

# スコアをリセット
scoreboard players reset #move DR
scoreboard players reset #check DR
scoreboard players reset #size DR
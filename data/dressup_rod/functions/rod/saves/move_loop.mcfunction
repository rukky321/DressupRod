#> dressup_rod:rod/saves/move_loop
#
# @within dressup_rod:rod/saves/move

# 先頭データを一番最後に移動させ、新しい先頭データの値も違えば再度呼び出し
scoreboard players remove #move DR 1
data modify storage dressup_rod: players[0][0][0][0][0].saves append from storage dressup_rod: players[0][0][0][0][0].saves[0]
data remove storage dressup_rod: players[0][0][0][0][0].saves[0]
execute store result score #check DR run data get storage dressup_rod: players[0][0][0][0][0].saves[0].id
execute unless score #check DR = @s DR_saves if score #move DR matches 2.. run function dressup_rod:rod/saves/move_loop

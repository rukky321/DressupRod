#> dressup_rod:storage/restore
#
# @within dressup_rod:storage/**

# 動かした配列を元の整列済みの状態まで戻す

# e(4^0の位)
scoreboard players operation #DR DR = #DR_E DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/e

# d(4^1の位)
scoreboard players operation #DR DR = #DR_D DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/d

# c(4^2の位)
scoreboard players operation #DR DR = #DR_C DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/c

# b(4^3の位)
scoreboard players operation #DR DR = #DR_B DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/b

# a(4^4の位)
scoreboard players operation #DR DR = #DR_A DR
execute if score #DR DR matches 1.. run function dressup_rod:storage/move/a

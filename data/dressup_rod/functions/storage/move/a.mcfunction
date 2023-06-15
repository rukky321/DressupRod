#> dressup_rod:storage/move/a
#
# @within dressup_rod:storage/**

data modify storage dressup_rod: players append from storage dressup_rod: players[0]
data remove storage dressup_rod: players[0]
scoreboard players remove #DR DR 1

execute if score #DR DR matches 1.. run function dressup_rod:storage/move/a


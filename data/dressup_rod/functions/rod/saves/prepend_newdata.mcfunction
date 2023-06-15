#> dressup_rod:rod/saves/prepend_newdata
#
# @within dressup_rod:rod/saves/move

data modify storage dressup_rod: players[0][0][0][0][0].saves append from storage dressup_rod: players[0][0][0][0][0].saves[0]
data remove storage dressup_rod: players[0][0][0][0][0].saves[0]
data modify storage dressup_rod: players[0][0][0][0][0].saves prepend value {ArmorItems:[{},{},{},{}],id:0}
execute store result storage dressup_rod: players[0][0][0][0][0].saves[0].id int 1 run scoreboard players get @s DR_saves
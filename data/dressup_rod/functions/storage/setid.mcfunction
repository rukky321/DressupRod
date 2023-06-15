#> dressup_rod:storage/setid
#
# @within dressup_rod:storage/get

# ストレージの割り当てをしていないプレイヤに割り当てを行う
scoreboard players operation @s DR_storageID = #DR DR_storageID
scoreboard players add #DR DR_storageID 1

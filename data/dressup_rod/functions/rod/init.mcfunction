#> dressup_rod:rod/init
#
# @within dressup_rod:tick

# rod関係のプレイヤスコアが未設定なら初期値を設定する
scoreboard players set @s DR_mode 0
scoreboard players set @s DR_apply_to 0
scoreboard players set @s DR_pattern 0
scoreboard players set @s DR_material 0
scoreboard players set @s DR_color 0
scoreboard players set @s DR_itemid 0
scoreboard players set @s DR_enchant 0
scoreboard players set @s DR_saves 0
scoreboard players set @s DR_history 0

# 個別ストレージを割り当て、undo用のリストとsave&load用のリストを作成する
function dressup_rod:storage/get
execute unless data storage dressup_rod: players[0][0][0][0][0].undo run data modify storage dressup_rod: players[0][0][0][0][0].undo set value []
execute unless data storage dressup_rod: players[0][0][0][0][0].saves run data modify storage dressup_rod: players[0][0][0][0][0].saves set value []

#初期化処理済みを示すタグをつける
tag @s add DR_initialized

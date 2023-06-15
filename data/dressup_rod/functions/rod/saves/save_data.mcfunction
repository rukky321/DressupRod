#> dressup_rod:rod/saves/save_data 
#
#	@output entity armor_stand (tag=DR_undo_container,it has ArmorItems nbt data)
#	@output score #save_result DR (success : 1 , failure : 0)
# @within dressup_rod:rod/**

# 変更結果をsavesに入れる。dressup_rod:rod/undo/addと一緒に使用すると考えているので、
# もし使わない場合はkill @e[tag=DR_undo_container] を使用しておくこと

# プレイヤのDR_savesの値とidが等しいデータがdressup_rod: players[0][0][0][0][0].saves[0]にくるように移動。なければ作成
function dressup_rod:rod/saves/move

# データが存在していなければ、新しく保存先を作成
execute if score #saves_move_result DR matches 0 run function dressup_rod:rod/saves/prepend_newdata

# データが更新されたかを調べるために、一度現在のストレージの状態を保存する
data modify storage dressup_rod tmp set from storage dressup_rod: players[0][0][0][0][0].saves[0]

# 保存する部位を調べ、一度DR_containerがついた防具たてに防具データをコピーしたのち、ストレージに保存する、また防具たてをキルする
summon armor_stand ~ ~-10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_container"]}
execute if score @s DR_apply_to matches 0 as @e[tag=DR_container,sort=nearest,limit=1] run function dressup_rod:rod/saves/save_data/armor
execute if score @s DR_apply_to matches 1 as @e[tag=DR_container,sort=nearest,limit=1] run function dressup_rod:rod/saves/save_data/head
execute if score @s DR_apply_to matches 2 as @e[tag=DR_container,sort=nearest,limit=1] run function dressup_rod:rod/saves/save_data/chest
execute if score @s DR_apply_to matches 3 as @e[tag=DR_container,sort=nearest,limit=1] run function dressup_rod:rod/saves/save_data/legs
execute if score @s DR_apply_to matches 4 as @e[tag=DR_container,sort=nearest,limit=1] run function dressup_rod:rod/saves/save_data/feet

# dressup_rod:rod/undo/add で使用するため、変更前の防具データを保存しておく。（元々データが存在していなかった場合には召喚しない）
execute if score #saves_move_result DR matches 1 run summon armor_stand ~ ~-10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_undo_container"]}
execute if score #saves_move_result DR matches 1 run data modify entity @e[tag=DR_undo_container,sort=nearest,limit=1] ArmorItems set from storage dressup_rod tmp.ArmorItems

# dataが変更されたのかを調べる。新しく保存先を作成した場合に限り強制的に成功(1)にする
execute store success score #save_result DR run data modify storage dressup_rod tmp set from storage dressup_rod: players[0][0][0][0][0].saves[0]
execute if score #saves_move_result DR matches 0 run scoreboard players set #save_result DR 1

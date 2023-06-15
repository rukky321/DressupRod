#> dressup_rod:rod/undo/pop/undo_armor
#
# @within dressup_rod:rod/undo/run

# 防具立てを召喚し、そこに防具データを一度格納する
summon armor_stand ~ ~-10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_container"]}
data modify entity @e[tag=DR_container,sort=nearest,limit=1] ArmorItems set from storage dressup_rod: players[0][0][0][0][0].undo[0].ArmorItems

# 変更した部位を取得し、それにあわせて防具立てに格納したデータを適用する
execute store result score #DR_ DR run data get storage dressup_rod: players[0][0][0][0][0].undo[0].ApplyTo
execute if score #DR_ DR matches 0 run function dressup_rod:rod/undo/pop/modify_armor
execute if score #DR_ DR matches 1 run item replace entity @s armor.head from entity @e[tag=DR_container,sort=nearest,limit=1] armor.head 
execute if score #DR_ DR matches 2 run item replace entity @s armor.chest from entity @e[tag=DR_container,sort=nearest,limit=1] armor.chest
execute if score #DR_ DR matches 3 run item replace entity @s armor.legs from entity @e[tag=DR_container,sort=nearest,limit=1] armor.legs
execute if score #DR_ DR matches 4 run item replace entity @s armor.feet from entity @e[tag=DR_container,sort=nearest,limit=1] armor.feet

#防具たてをキル
kill @e[tag=DR_container]

#タグを除去
tag @s remove DR_target
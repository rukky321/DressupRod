#> dressup_rod:rod/drop
#
# @within dressup_rod:tick

# プレイヤのメインハンドにロッドを設定する
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_container"],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{display:{Name:'{"text":"Dress-up Rod","color":"light_purple","italic":false}'},HideFlags:2,DR:1,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1d,Operation:0,UUID:[I;873542102,1797015258,-1801288432,401799944],Slot:"mainhand"}]}},{}]}
item replace entity @s weapon.mainhand from entity @e[tag=DR_container,sort=nearest,limit=1] weapon.mainhand
kill @e[tag=DR_container]

# スニークしているかどうかを調べ、それぞれに応じて操作を行う
execute if entity @s[scores={DR_sneaking=1..}] run function dressup_rod:rod/shift_drop/run
execute unless entity @s[scores={DR_sneaking=1..}] run function dressup_rod:rod/drop/run

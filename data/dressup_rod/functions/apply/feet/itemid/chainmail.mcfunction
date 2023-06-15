#> dressup_rod:apply/feet/itemid/chainmail
#
#> @within dressup_rod:rod/left_click/**

summon armor_stand ~ ~-10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_container"]}

item replace entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] armor.feet from entity @s armor.feet

data modify entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] ArmorItems[0].id set value "minecraft:chainmail_boots"

execute as @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] unless data entity @s ArmorItems[0].id run item replace entity @s armor.feet with minecraft:chainmail_boots

item replace entity @s armor.feet from entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] armor.feet

kill @e[type=armor_stand,tag=DR_container]

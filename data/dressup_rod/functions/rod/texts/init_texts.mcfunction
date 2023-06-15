#> dressup_rod:rod/texts/init_texts
#
# @within dressup_rod:tick

# 各テキスト表示用のストレージを初期化する

# mode
data modify storage dressup_rod: texts.mode set value [{text:"{\"text\":\"Trim.pattern\"}",id:0},{text:"{\"text\":\"Trim.material\"}",id:1},{text:"{\"text\":\"Armor.material\"}",id:2},{text:"{\"text\":\"Color\"}",id:3},{text:"{\"text\":\"Glint\"}",id:4},{text:"{\"text\":\"Save\"}",id:5},{text:"{\"text\":\"Load\"}",id:6}]

# slot
data modify storage dressup_rod: texts.slot set value [{text:"{\"text\":\"armor\"}",id:0},{text:"{\"text\":\"head\"}",id:1},{text:"{\"text\":\"chest\"}",id:2},{text:"{\"text\":\"legs\"}",id:3},{text:"{\"text\":\"feet\"}",id:4}]

# trim.pattern
data modify storage dressup_rod: texts.pattern set value [{text:"{\"text\":\"coast\"}",id:0},{text:"{\"text\":\"dune\"}",id:1},{text:"{\"text\":\"eye\"}",id:2},{text:"{\"text\":\"host\"}",id:3},{text:"{\"text\":\"raiser\"}",id:4},{text:"{\"text\":\"rib\"}",id:5},{text:"{\"text\":\"sentry\"}",id:6},{text:"{\"text\":\"shaper\"}",id:7},{text:"{\"text\":\"silence\"}",id:8},{text:"{\"text\":\"snout\"}",id:9},{text:"{\"text\":\"spire\"}",id:10},{text:"{\"text\":\"tide\"}",id:11},{text:"{\"text\":\"vex\"}",id:12},{text:"{\"text\":\"ward\"}",id:13},{text:"{\"text\":\"wayfinder\"}",id:14},{text:"{\"text\":\"wild\"}",id:15}]

# trim.material
data modify storage dressup_rod: texts.material set value [{text:"{\"text\":\"amethyst\",\"color\":\"light_purple\"}",id:0},{text:"{\"text\":\"copper\",\"color\":\"gold\"}",id:1},{text:"{\"text\":\"diamond\",\"color\":\"aqua\"}",id:2},{text:"{\"text\":\"emerald\",\"color\":\"green\"}",id:3},{text:"{\"text\":\"gold\",\"color\":\"yellow\"}",id:4},{text:"{\"text\":\"iron\",\"color\":\"gray\"}",id:5},{text:"{\"text\":\"lapis\",\"color\":\"blue\"}",id:6},{text:"{\"text\":\"netherite\",\"color\":\"dark_purple\"}",id:7},{text:"{\"text\":\"quartz\",\"color\":\"white\"}",id:8},{text:"{\"text\":\"redstone\",\"color\":\"red\"}",id:9}]

# Armor.material
data modify storage dressup_rod: texts.item set value [{text:"{\"text\":\"leather\"}",id:0},{text:"{\"text\":\"golden\"}",id:1},{text:"{\"text\":\"chainmail\"}",id:2},{text:"{\"text\":\"iron\"}",id:3},{text:"{\"text\":\"diamond\"}",id:4},{text:"{\"text\":\"netherite\"}",id:5}]

# color
data modify storage dressup_rod: texts.color set value [{text:"{\"text\":\"black\",\"color\":\"black\"}",id:0},{text:"{\"text\":\"dark_blue\",\"color\":\"dark_blue\"}",id:1},{text:"{\"text\":\"dark_green\",\"color\":\"dark_green\"}",id:2},{text:"{\"text\":\"dark_aqua\",\"color\":\"dark_aqua\"}",id:3},{text:"{\"text\":\"dark_red\",\"color\":\"dark_red\"}",id:4},{text:"{\"text\":\"dark_purple\",\"color\":\"dark_purple\"}",id:5},{text:"{\"text\":\"gold\",\"color\":\"gold\"}",id:6},{text:"{\"text\":\"gray\",\"color\":\"gray\"}",id:7},{text:"{\"text\":\"dark_gray\",\"color\":\"dark_gray\"}",id:8},{text:"{\"text\":\"blue\",\"color\":\"blue\"}",id:9},{text:"{\"text\":\"green\",\"color\":\"green\"}",id:10},{text:"{\"text\":\"aqua\",\"color\":\"aqua\"}",id:11},{text:"{\"text\":\"red\",\"color\":\"red\"}",id:12},{text:"{\"text\":\"light_purple\",\"color\":\"light_purple\"}",id:13},{text:"{\"text\":\"yellow\",\"color\":\"yellow\"}",id:14},{text:"{\"text\":\"white\",\"color\":\"white\"}",id:15}]

# glint 
data modify storage dressup_rod: texts.glint set value [{text:"{\"text\":\"false\"}",id:0},{text:"{\"text\":\"true\"}",id:1}]
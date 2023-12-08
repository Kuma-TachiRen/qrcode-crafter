#> qrcc:encode/
# エンコード
# qrcc:_ data へ append する
# @input
#   storage qrcc: Text
#   storage qrcc: ECLevel
# @output
#   score #Mode QRCC
#   score #Version QRCC
#   score #Size QRCC
# @api

# classify
    data modify storage qrcc:_ text set from storage qrcc: Text
    function qrcc:encode/classify/

# encode
    data modify storage qrcc:_ text set from storage qrcc: Text
    data modify storage qrcc:_ data_temp set value []
    execute if score #Mode QRCC matches 0 run function qrcc:encode/numeric/
    execute if score #Mode QRCC matches 1 run function qrcc:encode/alphanumeric/
    execute if score #Mode QRCC matches 2 run function qrcc:encode/unicode/
    data remove storage qrcc:_ text
    execute if score #Result QRCC matches -1 run return -1

# calc version
    function qrcc:encode/version/
    data modify storage qrcc:_ data append from storage qrcc:_ data_temp[]
    data remove storage qrcc:_ data_temp

# get params
    data modify storage qrcc:_ macro set value {}
    execute store result storage qrcc:_ macro.version int 1 run scoreboard players get #Version QRCC
    data modify storage qrcc:_ macro.ec_level set from storage qrcc: ECLevel
    function qrcc:encode/get_params with storage qrcc:_ macro

# calc size
    scoreboard players operation #Size QRCC = #Version QRCC
    scoreboard players set #4 QRCC 4
    scoreboard players operation #Size QRCC *= #4 QRCC
    scoreboard players reset #4 QRCC
    scoreboard players add #Size QRCC 17

# 0 padding
    scoreboard players set #8 QRCC 8
    scoreboard players set #16 QRCC 16
    execute store result score #MaxLength QRCC run data get storage qrcc:_ params.L
    scoreboard players operation #MaxLength QRCC *= #8 QRCC
    execute store result score #Length QRCC run data get storage qrcc:_ data
    scoreboard players operation #Loop QRCC = #MaxLength QRCC
    scoreboard players operation #Loop QRCC -= #Length QRCC
    execute if score #Loop QRCC matches 5.. run scoreboard players set #Loop QRCC 4
    scoreboard players operation #Length QRCC += #Loop QRCC
    execute if score #Loop QRCC matches 1.. run function qrcc:encode/append_0
    scoreboard players operation #Loop QRCC = #MaxLength QRCC
    scoreboard players operation #Loop QRCC -= #Length QRCC
    scoreboard players operation #Loop QRCC %= #8 QRCC
    scoreboard players operation #Length QRCC += #Loop QRCC
    execute if score #Loop QRCC matches 1.. run function qrcc:encode/append_0

# to byte
    scoreboard players set #Temp2 QRCC 0
    data modify storage qrcc:_ data_temp set value []
    scoreboard players operation #Loop QRCC = #Length QRCC
    execute if score #Loop QRCC matches 1.. run function qrcc:encode/to_byte
    scoreboard players reset #Temp QRCC
    scoreboard players reset #Temp2 QRCC

# padding
    scoreboard players operation #Loop QRCC = #MaxLength QRCC
    scoreboard players operation #Loop QRCC -= #Length QRCC
    scoreboard players operation #Loop QRCC /= #16 QRCC
    execute if score #Loop QRCC matches 1.. run function qrcc:encode/padding_1
    execute if score #Length QRCC < #MaxLength QRCC run data modify storage qrcc:_ data_temp append value -20b
    scoreboard players reset #8 QRCC
    scoreboard players reset #16 QRCC
    scoreboard players reset #MaxLength QRCC
    scoreboard players reset #Length QRCC
    scoreboard players reset #Loop QRCC

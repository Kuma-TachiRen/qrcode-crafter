#> qrcc:encode/version/
# version 決定
# qrcc:_ data へ append
# @output
#   score #Version QRCC
#   score #MaxLength QRCC
# @within function qrcc:encode/**

#> 
#@within function qrcc:encode/version/**
    #define score_holder #Length
    #define score_holder #LengthBitsSize

data modify storage qrcc:_ macro set value {version:1}
execute store result storage qrcc:_ macro.mode int 1.0 run scoreboard players get #Mode QRCC
data modify storage qrcc:_ macro.ec_level set from storage qrcc: ECLevel

execute store result score #Length QRCC run data get storage qrcc:_ data_temp
scoreboard players add #Length QRCC 4

execute if score #Mode QRCC matches 0 run scoreboard players add #Length QRCC 10
execute if score #Mode QRCC matches 1 run scoreboard players add #Length QRCC 9
execute if score #Mode QRCC matches 2 run scoreboard players add #Length QRCC 8

scoreboard players set #Version QRCC 1
function qrcc:encode/version/loop with storage qrcc:_ macro

execute if score #Mode QRCC matches 0 if score #Version QRCC matches 1..9 run scoreboard players set #LengthBitsSize QRCC 10
execute if score #Mode QRCC matches 0 if score #Version QRCC matches 10..26 run scoreboard players set #LengthBitsSize QRCC 12
execute if score #Mode QRCC matches 0 if score #Version QRCC matches 27..40 run scoreboard players set #LengthBitsSize QRCC 14
execute if score #Mode QRCC matches 1 if score #Version QRCC matches 1..9 run scoreboard players set #LengthBitsSize QRCC 9
execute if score #Mode QRCC matches 1 if score #Version QRCC matches 10..26 run scoreboard players set #LengthBitsSize QRCC 11
execute if score #Mode QRCC matches 1 if score #Version QRCC matches 27..40 run scoreboard players set #LengthBitsSize QRCC 13
execute if score #Mode QRCC matches 2 if score #Version QRCC matches 1..9 run scoreboard players set #LengthBitsSize QRCC 8
execute if score #Mode QRCC matches 2 if score #Version QRCC matches 10..40 run scoreboard players set #LengthBitsSize QRCC 16

scoreboard players set #8 QRCC 8
execute if score #Mode QRCC matches 0..1 store result score #Length QRCC run data get storage qrcc: Text
execute if score #Mode QRCC matches 2 store result score #Length QRCC run data get storage qrcc:_ data_temp
execute if score #Mode QRCC matches 2 run scoreboard players operation #Length QRCC /= #8 QRCC
scoreboard players reset #8 QRCC
data modify storage qrcc:_ length_bits set value []
scoreboard players set #2 QRCC 2
function qrcc:encode/version/data_calc
scoreboard players reset #LengthBitsSize QRCC
scoreboard players reset #Temp QRCC
scoreboard players reset #2 QRCC
data modify storage qrcc:_ data append from storage qrcc:_ length_bits[]
data remove storage qrcc:_ length_bits

scoreboard players reset #Length QRCC

#> qrcc:error_correct/
# 誤り訂正
# @input
#   storage qrcc:_ params
#   storage qrcc:_ data_temp
# @output
#   score #Mode QRCC
#   score #Version QRCC
#   score #Size QRCC
# @api

#>
#@within function qrcc:error_correct/**
    #define score_holder #ECLength
    #define score_holder #Group1Count
    #define score_holder #Group2Count
    #define score_holder #Group1Length
    #define score_holder #Group2Length

# read params
    execute store result score #ECLength QRCC run data get storage qrcc:_ params.EC
    execute store result score #Group1Length QRCC run data get storage qrcc:_ params.GL
    execute store result score #Group1Count QRCC run data get storage qrcc:_ params.G1
    scoreboard players operation #Group2Length QRCC = #Group1Length QRCC
    scoreboard players add #Group2Length QRCC 1
    execute store result score #Group2Count QRCC run data get storage qrcc:_ params.G2

# split data
    data modify storage qrcc:_ data_split set value []
    scoreboard players operation #Length QRCC = #Group1Length QRCC
    scoreboard players operation #Loop QRCC = #Group1Count QRCC
    execute if score #Loop QRCC matches 1.. run function qrcc:error_correct/split/
    scoreboard players add #Length QRCC 1
    scoreboard players operation #Loop QRCC = #Group2Count QRCC
    execute if score #Loop QRCC matches 1.. run function qrcc:error_correct/split/

# merge data
    data modify storage qrcc:_ data_temp set from storage qrcc:_ data_split
    scoreboard players operation #MergeLength QRCC = #Group2Length QRCC
    scoreboard players operation #MergeGroup QRCC = #Group1Count QRCC
    scoreboard players operation #MergeGroup QRCC += #Group2Count QRCC
    scoreboard players set #Loop QRCC 0
    function qrcc:error_correct/merge/
    data modify storage qrcc:_ data_temp set value []

# calc error correct codewords
    function qrcc:error_correct/calc/

# merge ecc
    scoreboard players operation #MergeLength QRCC = #ECLength QRCC
    scoreboard players operation #MergeGroup QRCC = #Group1Count QRCC
    scoreboard players operation #MergeGroup QRCC += #Group2Count QRCC
    scoreboard players set #Loop QRCC 0
    function qrcc:error_correct/merge/
    data modify storage qrcc:_ data_temp set value []

scoreboard players reset #Loop QRCC
scoreboard players reset #Loop2 QRCC
scoreboard players reset #MergeLength QRCC
scoreboard players reset #MergeGroup QRCC
scoreboard players reset #ECLength QRCC
scoreboard players reset #Group1Count QRCC
scoreboard players reset #Group2Count QRCC
scoreboard players reset #Group1Length QRCC
scoreboard players reset #Group2Length QRCC

#> qrcc:build/masked
# マスク指定してコード構築
# @within function qrcc:build/**

#>
#@within function qrcc:build/**
#define score_holder #Loop
#define score_holder #Temp
#define score_holder #Val

# init matrix
data modify storage qrcc:_ code set value [[]]
scoreboard players operation #Loop QRCC = #Size QRCC
function qrcc:build/init_matrix_1
scoreboard players operation #Loop QRCC = #Size QRCC
function qrcc:build/init_matrix_2

# finder patterns
function qrcc:build/finder_pattern

# timing patterns
scoreboard players set #Val QRCC 1
data modify storage qrcc:_ macro.val set value 1b
scoreboard players operation #Loop QRCC = #Size QRCC
scoreboard players remove #Loop QRCC 9
execute store result storage qrcc:_ macro.idx int 1.0 run scoreboard players get #Loop QRCC
function qrcc:build/timing_pattern with storage qrcc:_ macro
data remove storage qrcc:_ macro.val
data remove storage qrcc:_ macro.idx

# align patterns
function qrcc:build/align_pattern_1 with storage qrcc:_ macro

# dark module
data modify storage qrcc:_ code[-8][8] set value 1b

# format info
function qrcc:build/format_info with storage qrcc:_ macro

# version info
execute if score #Version QRCC matches 7.. run function qrcc:build/version_info with storage qrcc:_ macro

# data
function qrcc:build/data/

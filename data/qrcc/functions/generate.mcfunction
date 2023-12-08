#> qrcc:generate
# QR コードを生成する
# @input 
#   storage qrcc: Text
#   storage qrcc: ECLevel
# @api

# define
    #define score_holder #Mode Mode
    #define score_holder #Version Version
    #define score_holder #Size Size

# init
    data modify storage qrcc:_ data set value []

# encode
    function qrcc:encode/

# error correct
    execute unless score #Result QRCC matches -1 run function qrcc:error_correct/

# build code
    execute unless score #Result QRCC matches -1 run function qrcc:build/

# return
    execute unless score #Result QRCC matches -1 run data modify storage qrcc: Result.Code set from storage qrcc:_ code
    execute unless score #Result QRCC matches -1 store result storage qrcc: Result.Size short 1.0 run scoreboard players get #Size QRCC

# reset
    scoreboard players reset * QRCC
    data remove storage qrcc:_ params
    data remove storage qrcc:_ macro
    data remove storage qrcc:_ code
    data remove storage qrcc:_ data
    data remove storage qrcc:_ data_temp
    data remove storage qrcc:_ data_split
    data remove storage qrcc:_ align_patterns

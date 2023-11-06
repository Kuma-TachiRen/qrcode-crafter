#> qrcc:generate
# QR コードを生成する
# @input 
#   storage qrcc: text
#   storage qrcc: ec_level
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
    function qrcc:error_correct/


# reset
    scoreboard players reset * QRCC

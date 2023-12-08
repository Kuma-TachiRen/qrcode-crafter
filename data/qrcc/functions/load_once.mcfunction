#> qrcc:load_once
#
# 初回読み込み時
#
# @internal

# scoreboard 宣言
    scoreboard players set #QRCCLoadFlag QRCC 1

# storage 宣言
#> 入出力用
    #define storage qrcc:

#> 内部処理用
    #define storage qrcc:_

#> 定数用
    #define storage qrcc:table

# 各種定数読み込み
    function #qrcc:load_table

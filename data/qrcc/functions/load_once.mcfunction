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

## デコード用
    function qrcc:table/decode
    function qrcc:table/decode_numeric
    function qrcc:table/decode_alphanumeric

## 変換できる最大文字列長
    function qrcc:table/max_length

## 変換用パラメーター
    function qrcc:table/block_params

## GF(256)の演算

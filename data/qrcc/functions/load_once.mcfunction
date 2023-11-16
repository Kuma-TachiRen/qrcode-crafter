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

## エンコード用
    function qrcc:table/encode
    function qrcc:table/encode_numeric
    function qrcc:table/encode_alphanumeric

## 変換できる最大文字列長
    function qrcc:table/max_length

## 変換用パラメーター
    function qrcc:table/block_params

## GF(256)の演算
    function qrcc:table/gf256_add
    function qrcc:table/gf256_mul

## 最小多項式での除算結果
    function qrcc:table/error_correct_poly

## align pattern
    function qrcc:table/align_patterns

## format 情報
    function qrcc:table/format_info

## version 情報
    function qrcc:table/version_info

## byte を bit 列へ
    function qrcc:table/byte_bits

## mask
    function qrcc:table/mask

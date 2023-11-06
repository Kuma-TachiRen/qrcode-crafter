#> qrcc:load
#
# 読み込み時
#
# @internal

# 初回判定
    scoreboard objectives add QRCC dummy
    execute unless score #QRCCLoadFlag QRCC matches -2147483648..2147483647 run function qrcc:load_once

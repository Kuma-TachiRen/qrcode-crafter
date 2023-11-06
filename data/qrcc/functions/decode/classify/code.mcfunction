#> qrcc:decode/classify/code
# モード判別
# @internal

$execute if data storage qrcc:table decode_alphanumeric."$(char)" run scoreboard players remove #Tmp QRCC 32767
$execute if data storage qrcc:table decode_numeric."$(char)" run scoreboard players remove #Tmp QRCC 1

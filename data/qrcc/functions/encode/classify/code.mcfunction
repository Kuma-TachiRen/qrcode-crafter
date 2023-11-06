#> qrcc:encode/classify/code
# モード判別
# @internal

$execute if data storage qrcc:table encode_alphanumeric."$(char)" run scoreboard players remove #Tmp QRCC 32767
$execute if data storage qrcc:table encode_numeric."$(char)" run scoreboard players remove #Tmp QRCC 1

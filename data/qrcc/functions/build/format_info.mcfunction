#> qrcc:build/format_info
# format info
# @within function qrcc:build/**

$data modify storage qrcc:_ format_info set from storage qrcc:table format_info[$(ec_level)][$(mask)]

data modify storage qrcc:_ code[8][0] set from storage qrcc:_ format_info[0]
data modify storage qrcc:_ code[8][1] set from storage qrcc:_ format_info[1]
data modify storage qrcc:_ code[8][2] set from storage qrcc:_ format_info[2]
data modify storage qrcc:_ code[8][3] set from storage qrcc:_ format_info[3]
data modify storage qrcc:_ code[8][4] set from storage qrcc:_ format_info[4]
data modify storage qrcc:_ code[8][5] set from storage qrcc:_ format_info[5]
data modify storage qrcc:_ code[8][7] set from storage qrcc:_ format_info[6]
data modify storage qrcc:_ code[8][8] set from storage qrcc:_ format_info[7]
data modify storage qrcc:_ code[7][8] set from storage qrcc:_ format_info[8]
data modify storage qrcc:_ code[5][8] set from storage qrcc:_ format_info[9]
data modify storage qrcc:_ code[4][8] set from storage qrcc:_ format_info[10]
data modify storage qrcc:_ code[3][8] set from storage qrcc:_ format_info[11]
data modify storage qrcc:_ code[2][8] set from storage qrcc:_ format_info[12]
data modify storage qrcc:_ code[1][8] set from storage qrcc:_ format_info[13]
data modify storage qrcc:_ code[0][8] set from storage qrcc:_ format_info[14]

data modify storage qrcc:_ code[-1][8] set from storage qrcc:_ format_info[0]
data modify storage qrcc:_ code[-2][8] set from storage qrcc:_ format_info[1]
data modify storage qrcc:_ code[-3][8] set from storage qrcc:_ format_info[2]
data modify storage qrcc:_ code[-4][8] set from storage qrcc:_ format_info[3]
data modify storage qrcc:_ code[-5][8] set from storage qrcc:_ format_info[4]
data modify storage qrcc:_ code[-6][8] set from storage qrcc:_ format_info[5]
data modify storage qrcc:_ code[-7][8] set from storage qrcc:_ format_info[6]
data modify storage qrcc:_ code[8][-8] set from storage qrcc:_ format_info[7]
data modify storage qrcc:_ code[8][-7] set from storage qrcc:_ format_info[8]
data modify storage qrcc:_ code[8][-6] set from storage qrcc:_ format_info[9]
data modify storage qrcc:_ code[8][-5] set from storage qrcc:_ format_info[10]
data modify storage qrcc:_ code[8][-4] set from storage qrcc:_ format_info[11]
data modify storage qrcc:_ code[8][-3] set from storage qrcc:_ format_info[12]
data modify storage qrcc:_ code[8][-2] set from storage qrcc:_ format_info[13]
data modify storage qrcc:_ code[8][-1] set from storage qrcc:_ format_info[14]

data remove storage qrcc:_ format_info
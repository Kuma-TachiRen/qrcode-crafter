#> qrcc:build/init_matrix_2
# @within function qrcc:build/**

data modify storage qrcc:_ code append from storage qrcc:_ code[0]
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 2.. run function qrcc:build/init_matrix_2
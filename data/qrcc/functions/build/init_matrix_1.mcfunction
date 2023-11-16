#> qrcc:build/init_matrix_1
# @within function qrcc:build/**

data modify storage qrcc:_ code[0] append value -1b
scoreboard players remove #Loop QRCC 1
execute if score #Loop QRCC matches 1.. run function qrcc:build/init_matrix_1
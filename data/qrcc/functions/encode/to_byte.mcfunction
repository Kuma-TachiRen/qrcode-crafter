#> qrcc:encode/to_byte
# @within function qrcc:encode/**

scoreboard players set #Temp QRCC 0

execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC
scoreboard players operation #Temp QRCC += #Temp QRCC
execute store result score #Temp2 QRCC run data get storage qrcc:_ data[0]
data remove storage qrcc:_ data[0]
scoreboard players operation #Temp QRCC += #Temp2 QRCC

data modify storage qrcc:_ data_temp append value 0b
execute store result storage qrcc:_ data_temp[-1] byte 1.0 run scoreboard players get #Temp QRCC

scoreboard players remove #Loop QRCC 8
execute if score #Loop QRCC matches 1.. run function qrcc:encode/to_byte

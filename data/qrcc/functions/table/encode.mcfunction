#> qrcc:table/encode
# テーブル
# エンコード用
#@internal

#define storage qrcc:table encode_numeric
    execute unless data storage qrcc:table encode_numeric run data modify storage qrcc:table encode_numeric set value {0:0b,1:1b,2:2b,3:3b,4:4b,5:5b,6:6b,7:7b,8:8b,9:9b}
#define storage qrcc:table encode_alphanumeric
    execute unless data storage qrcc:table encode_alphanumeric run data modify storage qrcc:table encode_alphanumeric set value {"0":0b,"1":1b,"2":2b,"3":3b,"4":4b,"5":5b,"6":6b,"7":7b,"8":8b,"9":9b,"A":10b,"B":11b,"C":12b,"D":13b,"E":14b,"F":15b,"G":16b,"H":17b,"I":18b,"J":19b,"K":20b,"L":21b,"M":22b,"N":23b,"O":24b,"P":25b,"Q":26b,"R":27b,"S":28b,"T":29b,"U":30b,"V":31b,"W":32b,"X":33b,"Y":34b,"Z":35b," ":36b,"$":37b,"%":38b,"*":39b,"+":40b,"-":41,".":42,"/":43b,":":44b}

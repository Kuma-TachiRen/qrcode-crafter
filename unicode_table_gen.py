import re
import unicodedata

SKIP = {0x0022, 0x0027, 0x005C}


def gen_range(mi, ma):
    res = {}
    for i in range(mi, ma + 1, 1):
        if i in SKIP:
            continue
        try:
            c = chr(i)
            unicodedata.name(c)
            code_str = c.encode("utf-8").hex()
            code = int(code_str, 16)
            res[c] = list(map(int, format(code, "0" + str(len(code_str) * 4) + "b")))
        except:
            True
    res_str = str(res)
    res_str = re.sub(" ", "", res_str)
    res_str = re.sub("'", '"', res_str)
    res_str = re.sub("(?<=[01])", "b", res_str)
    print("data modify storage qrcc:table encode_unicode_map merge value", res_str)


def gen_string(s):
    res = {}
    for c in s:
        unicodedata.name(c)
        code_str = c.encode("utf-8").hex()
        code = int(code_str, 16)
        res[c] = list(map(int, format(code, "0" + str(len(code_str) * 4) + "b")))
    res_str = str(res)
    res_str = re.sub(" ", "", res_str)
    res_str = re.sub("'", '"', res_str)
    res_str = re.sub("(?<=[01])", "b", res_str)
    print("data modify storage qrcc:table encode_unicode_map merge value", res_str)


# 以下で生成される範囲の文字群についてはデフォルトで埋め込み済みです
# gen_range(0x0020, 0x007F)  # 英字
# gen_range(0x3040, 0x309F)  # ひらがな
# gen_range(0x30A0, 0x30FF)  # カタカナ

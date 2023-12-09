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
            bytes = []
            while code > 0:
                bytes.insert(0, code & 0xFF)
                code >>= 8
            res[c] = list(map(lambda x: f"{x if x < 0x80 else x-0x100}b", bytes))
        except:
            True
    res_str = str(res)
    res_str = re.sub("(?<=[:,]) ", "", res_str)
    res_str = re.sub("'", '"', res_str)
    res_str = re.sub('"(-?[\d]+b)"', "\\1", res_str)
    print("data modify storage qrcc:table encode_unicode_map merge value", res_str)


def gen_string(s):
    res = {}
    for c in s:
        code_str = c.encode("utf-8").hex()
        code = int(code_str, 16)
        bytes = []
        while code > 0:
            bytes.insert(0, code & 0xFF)
            code >>= 8
        res[c] = list(map(lambda x: f"{x if x < 0x80 else x-0x100}b", bytes))
    res_str = str(res)
    res_str = re.sub("(?<=[:,]) ", "", res_str)
    res_str = re.sub("'", '"', res_str)
    res_str = re.sub('"(-?[\d]+b)"', "\\1", res_str)
    print("data modify storage qrcc:table encode_unicode_map merge value", res_str)


# 以下で生成される範囲の文字群についてはデフォルトで埋め込み済みです
# gen_range(0x0020, 0x007F)  # 英字
# gen_range(0x3040, 0x309F)  # ひらがな
# gen_range(0x30A0, 0x30FF)  # カタカナ

#perf:utils/rstring/_print
# 聊天栏输出字符串

data modify storage math:io temp set value []
data modify storage math:io temp append from storage math:io rstring_chars[].char
tellraw @a "math:rstring {"
tellraw @a ["    ",{"nbt":"temp","storage":"math:io","interpret":true},","]
tellraw @a ["    length: ",{"score":{"name":"rstring_n","objective":"int"}},","]
tellraw @a ["    phi: ",{"score":{"name":"rstring_phi","objective":"int"}}]
tellraw @a "}"
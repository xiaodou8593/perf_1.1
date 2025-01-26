#perf:utils/string/_print
# 聊天栏输出字符串

data modify storage math:io temp set value []
data modify storage math:io temp append from storage math:io string_chars[].char
tellraw @a "math:string {"
tellraw @a ["    ",{"nbt":"temp","storage":"math:io","interpret":true},","]
tellraw @a ["    length: ",{"score":{"name":"string_n","objective":"int"}},","]
tellraw @a ["    phi: ",{"score":{"name":"string_phi","objective":"int"}}]
tellraw @a "}"
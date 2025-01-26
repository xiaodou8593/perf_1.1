#perf:utils/string/test/to_raw
# 聊天栏调用

tellraw @a "--- math:string to_raw test ---"

data modify storage math:io input set value "test_hi_cber"
function perf:utils/string/_from_raw
function perf:utils/string/_to_raw
tellraw @a ["result: ", {"nbt":"result","storage":"math:io"}]
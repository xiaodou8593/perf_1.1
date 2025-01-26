#perf:utils/string/test/startswith
# 聊天栏调用

tellraw @a "--- math:string startswith test ---"

data modify storage math:io input set value "test_hi_cber"
function perf:utils/string/_from_raw

data modify storage math:io input set value "hi_cber"
function perf:utils/pstring/_from_raw

function perf:utils/string/_startswith
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 5
function perf:utils/string/_next_i

function perf:utils/string/_startswith
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]
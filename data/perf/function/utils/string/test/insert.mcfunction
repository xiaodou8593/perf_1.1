#perf:utils/string/test/insert
# 聊天栏调用

tellraw @a "--- math:string insert test ---"

data modify storage math:io input set value "test_hi_cber"
function perf:utils/string/_from_raw

scoreboard players set inp int 5
function perf:utils/string/_next_i

scoreboard players set inp int 2
function perf:utils/string/_slice
function perf:utils/rstring/_print

data modify storage math:io input set value "hello"
function perf:utils/pstring/_from_raw
function perf:utils/string/_insert

function perf:utils/string/_rephi
function perf:utils/string/_print
#perf:utils/string/test/slice
# 聊天栏调用

tellraw @a "--- math:string slice test ---"

data modify storage math:io input set value "test_hi_cber"
function perf:utils/string/_from_raw

scoreboard players set inp int 4
function perf:utils/string/_slice
function perf:utils/rstring/_print

function perf:utils/string/_next_char

scoreboard players set inp int 2
function perf:utils/string/_slice
function perf:utils/rstring/_print

function perf:utils/string/_next_char

scoreboard players set inp int 4
function perf:utils/string/_slice
function perf:utils/rstring/_print

function perf:utils/string/_print
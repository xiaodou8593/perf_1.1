#perf:utils/string/test/fetch
# 聊天栏调用

tellraw @a "--- math:string fetch test ---"

data modify storage math:io input set value "test_hi_cber"
function perf:utils/string/_from_raw

scoreboard players set inp int 4
function perf:utils/string/_fetch
function perf:utils/rstring/_print

function perf:utils/string/_next_char

scoreboard players set inp int 2
function perf:utils/string/_fetch
function perf:utils/rstring/_print

function perf:utils/string/_next_char

scoreboard players set inp int 4
function perf:utils/string/_fetch
function perf:utils/rstring/_print

function perf:utils/string/_print
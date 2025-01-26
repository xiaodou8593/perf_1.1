#perf:utils/string/test/find
# 聊天栏调用

tellraw @a "--- math:string find test ---"

data modify storage math:io input set value "test_8593_hi_3528_cber"
function perf:utils/string/_from_raw

# 数字匹配器
data modify storage math:io input set value []
data modify storage math:io input append from storage math:class string_matchers.num

function perf:utils/string/_find
scoreboard players operation inp int = res int
function perf:utils/string/_slice
function perf:utils/rstring/_todec
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

function perf:utils/string/_find
scoreboard players operation inp int = res int
function perf:utils/string/_slice
function perf:utils/rstring/_todec
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

function perf:utils/string/_find
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]
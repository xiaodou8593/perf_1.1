#perf:utils/string/test/filter
# 聊天栏调用

tellraw @a "--- math:string filter test ---"

data modify storage math:io input set value "3528_-8593_test_hi_000_cber"
function perf:utils/string/_from_raw
function perf:utils/string/_print

data modify storage math:io input set from storage math:class string_filters.num
function perf:utils/string/_filter
function perf:utils/string/_print
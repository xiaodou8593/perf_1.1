#perf:data/index/_start

data modify storage perf:io afk prepend value "data/index/macro"
data modify storage perf:io afk prepend value "rand_seed"
data modify storage perf:io afk prepend value "data/index/base"
data modify storage perf:io afk prepend value "rand_seed"
scoreboard players set data_n int 15
data modify storage perf:io afk prepend value "data/data_n"
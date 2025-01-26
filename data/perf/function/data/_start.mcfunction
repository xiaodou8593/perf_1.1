#perf:data/_start

data modify storage perf:io temp set value ["data/massive_data","data/set_from"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io temp set value ["data/data_100","data/set_from"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io temp set value ["data/data_10","data/set_from"]
data modify storage perf:io afk prepend from storage perf:io temp[]

data modify storage perf:io temp set value ["data/data_0","data/set_from"]
data modify storage perf:io afk prepend from storage perf:io temp[]
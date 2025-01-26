#perf:data/massive_data/_start

recipe give @p *
data modify storage perf:io data set from entity @p recipeBook.recipes
recipe take @p *
execute store result score data_n int if data storage perf:io data[]
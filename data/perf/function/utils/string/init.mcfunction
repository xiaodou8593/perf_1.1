#perf:utils/string/init

# 字符过滤器
data modify storage math:class string_filters set value {\
	num:["0","1","2","3","4","5","6","7","8","9","-"],\
	lowercase:["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],\
	uppercase:["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],\
	letters:["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],\
}

# 字符匹配器
data modify storage math:class string_matchers set value {\
	num:{"0":1b,"1":1b,"2":1b,"3":1b,"4":1b,"5":1b,"6":1b,"7":1b,"8":1b,"9":1b,"-":1b,range:[1,1024]},\
	num_:{"0":1b,"1":1b,"2":1b,"3":1b,"4":1b,"5":1b,"6":1b,"7":1b,"8":1b,"9":1b,"-":1b,range:[0,1024]},\
	lowercase:{"a":1b,"b":1b,"c":1b,"d":1b,"e":1b,"f":1b,"g":1b,"h":1b,"i":1b,"j":1b,"k":1b,"l":1b,"m":1b,"n":1b,"o":1b,"p":1b,"q":1b,"r":1b,"s":1b,"t":1b,"u":1b,"v":1b,"w":1b,"x":1b,"y":1b,"z":1b,range:[1,1024]},\
	lowercase_:{"a":1b,"b":1b,"c":1b,"d":1b,"e":1b,"f":1b,"g":1b,"h":1b,"i":1b,"j":1b,"k":1b,"l":1b,"m":1b,"n":1b,"o":1b,"p":1b,"q":1b,"r":1b,"s":1b,"t":1b,"u":1b,"v":1b,"w":1b,"x":1b,"y":1b,"z":1b,range:[0,1024]},\
	uppercase:{"A":1b,"B":1b,"C":1b,"D":1b,"E":1b,"F":1b,"G":1b,"H":1b,"I":1b,"J":1b,"K":1b,"L":1b,"M":1b,"N":1b,"O":1b,"P":1b,"Q":1b,"R":1b,"S":1b,"T":1b,"U":1b,"V":1b,"W":1b,"X":1b,"Y":1b,"Z":1b,range:[1,1024]},\
	uppercase_:{"A":1b,"B":1b,"C":1b,"D":1b,"E":1b,"F":1b,"G":1b,"H":1b,"I":1b,"J":1b,"K":1b,"L":1b,"M":1b,"N":1b,"O":1b,"P":1b,"Q":1b,"R":1b,"S":1b,"T":1b,"U":1b,"V":1b,"W":1b,"X":1b,"Y":1b,"Z":1b,range:[0,1024]},\
	letters:{"a":1b,"b":1b,"c":1b,"d":1b,"e":1b,"f":1b,"g":1b,"h":1b,"i":1b,"j":1b,"k":1b,"l":1b,"m":1b,"n":1b,"o":1b,"p":1b,"q":1b,"r":1b,"s":1b,"t":1b,"u":1b,"v":1b,"w":1b,"x":1b,"y":1b,"z":1b,"A":1b,"B":1b,"C":1b,"D":1b,"E":1b,"F":1b,"G":1b,"H":1b,"I":1b,"J":1b,"K":1b,"L":1b,"M":1b,"N":1b,"O":1b,"P":1b,"Q":1b,"R":1b,"S":1b,"T":1b,"U":1b,"V":1b,"W":1b,"X":1b,"Y":1b,"Z":1b,range:[1,1024]},\
	letters_:{"a":1b,"b":1b,"c":1b,"d":1b,"e":1b,"f":1b,"g":1b,"h":1b,"i":1b,"j":1b,"k":1b,"l":1b,"m":1b,"n":1b,"o":1b,"p":1b,"q":1b,"r":1b,"s":1b,"t":1b,"u":1b,"v":1b,"w":1b,"x":1b,"y":1b,"z":1b,"A":1b,"B":1b,"C":1b,"D":1b,"E":1b,"F":1b,"G":1b,"H":1b,"I":1b,"J":1b,"K":1b,"L":1b,"M":1b,"N":1b,"O":1b,"P":1b,"Q":1b,"R":1b,"S":1b,"T":1b,"U":1b,"V":1b,"W":1b,"X":1b,"Y":1b,"Z":1b,range:[0,1024]},\
}
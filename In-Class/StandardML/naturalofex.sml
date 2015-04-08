datatype Natural = O | succ of Natural;

fun naturalof 0 = O
	| naturalof x = succ(naturalof (x-1))
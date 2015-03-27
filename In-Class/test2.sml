fun fact 0 = 1
	| fact n = n * fact (n-1)

fun reverse [] = []
	| reverse (h::t) = (reverse t) @ [h]

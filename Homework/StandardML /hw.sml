fun explode(s) = 

	if s = "" then []
	else   (String.sub(s,0)) :: (explode(substring(s, 1, size(s)-1)))


(* Ex 10 *)
fun gcd(a, b) = 
	if b=0 then a
	else	gcd(b, a mod b)


(* Ex 11 *)
fun allCaps(inputString) = 
	if inputString="" then inputString
	else Char.toString(Char.toUpper(String.sub(inputString, 0))) ^ allCaps(substring(inputString, 1, size(inputString)-1))

(* Ex 12 *)
fun firstCaps(inputList) = 
	if inputList=[] then inputList
	else (Char.toString(Char.toUpper(String.sub(hd(inputList),0))) ^ substring(hd(inputList), 1, size(hd(inputList))-1)) :: firstCaps(tl(inputList))


(* Ex 13 *)
fun swap [] = []
	| swap(first :: second :: theRest) = second :: first :: swap(theRest)


(* Ex 14 *)
fun rotate(rotator, inputList) = inputList
	| rotate(rotator, g1 :: g2 :: g3) = 
	
	
	
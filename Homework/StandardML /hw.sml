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
fun rotate(0, l) = l
	| rotate(n, h :: t) = rotate(n-1, t@[h]) 



(* Ex 15 *)
fun delete(0, inputString) = String.substring(inputString,1,(String.size(inputString)-1))
	| delete(n,inputString) = String.substring(inputString,0,1) ^ delete(n-1,String.substring(inputString,1,(String.size(inputString)-1)))


(* Ex 16 *)
fun intpow(x,0) = 1 | intpow(x,1) = x | intpow(x, n div 2) * intpow(x, n - (n div 2))


(* Ex 17 *)
fun rotate2(pos, inputList) = 
	let fun helper(0, temp, num) = List.take((temp @ List.rev(num)), List.length(lst1))
        | helper(n, nil, num) = []
        | helper(n, h::t, num) = helper(n-1, t, h::num)
    in
        helper(n1, lst1, [])
    end


(* Ex 18 *)


(* Ex 19 *)


(* Ex 20 *)
fun delete5(inputString) = 
	if (String.size(inputString)) < 5 then inputString
	else (String.substring(inputString, 0, 4) ^ String.substring(inputString, 5, String.size(inputString)-5))


(* Ex 21 *)
fun evens(inputList) = List.filter(fn numb => if numb mod 2 = 0 then true else false) inputList


(* Ex 22 *)
fun firstLowers(inputList) = List.filter(fn strn => Char.isLower(String.sub(strn,0))) inputList


(* Ex 23 *)
fun allCaps(inputString) = String.map Char.toUpper inputString

(* Ex 24 
fun find(s,file) = 
	let val useFile = TextIO.openIn(file)
	let val t = TextIO.inputLine
	in
		case t of
			SOME u => 
			| NONE => 
	end *)


(* Ex 25 *)
fun transform Nest [] = []
	| transform Nest (h::t) = (Nest(h)) :: (transform Nest t)
	   handle _ => ((h) :: (transform Nest t))


(* Ex 26 *)
datatype
    Natural = O
        | succ of Natural


(* Ex 27 *)
fun convert(O) = 0
	| convert(succ(x)) = 1 + convert(x)


(* Ex 28 *)
fun add(x,O) = x | add(O,y) = y | add(x,succ(y)) = add(succ(x),y)


(* Ex 29 *)
fun mul(x,y) = 
	let fun helper(num, O) = num
		| helper(num, succ(n)) = helper(add(x, num),n)

	in

		helper(O,y)

	end
	

(* Ex 30 *)
exception emptyList
fun hadd([]) = raise emptyList
	| hadd(h::t) = List.foldr add h t













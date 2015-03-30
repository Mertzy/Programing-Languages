fun explode(s) = 

	if s = "" then []
	else   (String.sub(s,0)) :: (explode(substring(s, 1, size(s)-1)))

(* (*Ex 10*)
fun gcd(x, y) = 

	if y=0 then x
	else (gcd(y, x))/y

*)

(* Ex 11 *)
fun allCaps(x) = 
	if x="" then ""
	else toUpper(sub(x, 0)) ^ allCaps(substring(x, 1, (size(x)-1)))
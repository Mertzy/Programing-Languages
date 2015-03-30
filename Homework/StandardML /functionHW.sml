(* (* Ex 10 *)
fun gcd(x, y) = 
	if y=0 then x
	else (gcd(y, x))/y

*)
(*
(* Ex 11 *)
fun allCaps(x) = 
	if x="" then ""
	else ((sub(x,0)).toUpper) ^ allCaps((x, 1, size(x)-1).substring)
*)

(* Ex 12 *)

fun firstCaps(inputList) = 
	
	
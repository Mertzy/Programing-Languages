fun fact(n) = 

	if n=0 then 1
	else   n*fact(n-1)


fun explode(s) = 

	if s = "" then []
	else   (String.sub(s,0)) :: (explode(substring(s, 1, size(s)-1)))
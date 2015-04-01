fun fib(0) = 0 | fib(1) = 1 | fib(n) = fib(n-1) + fib(n-2)

fun efib(n) =  let fun fibhelper(count,current,previous) =  if count = n then
previous else fibhelper(count+1,previous+current,current) in  fibhelper(0,1,0)
end

fun append ([],L) = L | append (h::t,L) = h :: (append(t,L))

fun badreverse [] = [] | badreverse (h::t) = append(badreverse t,[h])

fun reverse(L) = let fun revh(acc,[]) = acc | revh(acc,h::t) = revh(h::acc,t)
in revh([],L) end

fun positives L = List.filter (fn x =&gt; x &gt; 0) L;

fun squares L = List.map (fn x =&gt; x * x) L;

fun sumSquares L = List.foldr (fn (a,b) =&gt; a*a + b) 0 L;

fun reverse L = List.foldl (fn (a,RL) =&gt; a::RL) [] L;
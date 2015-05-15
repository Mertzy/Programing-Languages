let
	fun test51(L as h::t) =
		if h=1 then L else test51(L)
	| test51(x) = x
in
	println(test51[1, 2, 3])
end
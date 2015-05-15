let
	val x = Int.fromString(input("please enter an integer"))
	val y = Int.fromString(input("please enter an integer"))
in
	println(x div y)
end

handle 0 => println("handled 0")
	| handle ex => println(ex)

(*Load Const to load in pattern matches
Compare for matches
if it does not compare: POP_JUMP_IF_FALSE
GOTO L0
POP_TOP
LOAD GLOBAL println*)
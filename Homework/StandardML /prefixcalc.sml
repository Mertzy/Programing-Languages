datatype
  AST = add' of AST * AST
      | sub' of AST * AST
      | prod' of AST * AST
      | div' of AST * AST
      | negate' of AST
      | integer' of int
      | store' of AST
      | recall';


val memory = ref 0;
fun eval(add'(t1,t2)) =
      eval(t1) + eval(t2)
  | eval(sub'(t1,t2)) =
      eval(t1) - eval(t2)
  | eval(prod'(t1,t2)) =
      eval(t1) * eval(t2)
  | eval(div'(t1,t2)) =
      eval(t1) div eval(t2)
  | eval(negate'(t)) =
       ~1 * eval(t)
  | eval(store'(t)) =
    let val x = eval(t)
    in
      memory := x;
      x
    end
  | eval(recall') = !memory
  | eval(integer'(x)) = x


fun constants(add'(t1,t2)) = 
		(constants t1) @ (constants t2)    
  | constants(sub'(t1,t2)) = 
  		(constants t1) @ (constants t2)   
  | constants(prod'(t1,t2)) = 
  		(constants t1) @ (constants t2)   
  | constants(div'(t1,t2)) = 
  		(constants t1) @ (constants t2)   
  | constants(negate'(t)) = 
  		(constants t)    
  | constants(store'(t)) = 
  		(constants t) 
  | constants(recall') = []
  | constants(integer'(x)) = [x]



fun delimiter #" " = true
  | delimiter #"\t" = true
  | delimiter #"\n" = true
  | delimiter _ = false

exception eofException;

fun E ("+"::rest) =
  let val (ast1,rest1) = E(rest)
    val (ast2,rest2) = E(rest1)
  in
    (add'(ast1,ast2),rest2)
  end
  | E ("-"::rest) =
  let val (ast1,rest1) = E(rest)
    val (ast2,rest2) = E(rest1)
  in
    (sub'(ast1,ast2),rest2)
  end
  | E ("*"::rest) =
  let val (ast1,rest1) = E(rest)
    val (ast2,rest2) = E(rest1)
  in
    (prod'(ast1,ast2),rest2)
  end
  | E ("/"::rest) =
  let val (ast1,rest1) = E(rest)
    val (ast2,rest2) = E(rest1)
  in
    (div'(ast1,ast2),rest2)
  end
  | E ("~"::rest) =
  let val (ast,rest1) = E(rest)
  in
    (negate'(ast),rest1)
  end
   | E ("S"::rest) =
  let val (ast,rest1) = E(rest)
  in
    (store'(ast),rest1)
  end
  | E ("R"::rest) = (recall',rest)
  | E (x::rest) =
    let val i = valOf(Int.fromString(x))
    in
      (integer'(i),rest)
    end
  | E nil = raise eofException;

fun run() =
  (TextIO.output(TextIO.stdOut,"Please enter a prefix calculator expression: ");
   TextIO.flushOut(TextIO.stdOut);
   let val line = TextIO.inputLine(TextIO.stdIn)
       val tokens = String.tokens delimiter (valOf line)
       val (ast,remainingTokens) = E(tokens)
       val result = eval(ast)
   in
     if length(remainingTokens) <> 0 then
       raise(eofException)
     else ();
     
     TextIO.output(TextIO.stdOut,"The answer is: " ^ Int.toString(result) ^ "\n")
   end
   handle eofException =>
             TextIO.output(TextIO.stdOut,
               "You entered an invalid prefix expression.\n")
          | Option =>
             TextIO.output(TextIO.stdOut,
               "You entered invalid characters in the prefix expression.\n"))
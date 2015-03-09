import disassembler

def main():
    print("type:","str", "repr")
    print("bool:",False,repr(False))
    print("int:", 6, repr(6))
    print("float:",6.2, repr(6.2))
    print("str:","Hello",repr("Hello"))

    print("print:",print,(repr(print)))
    print("iter:",iter,repr(iter))
    print("input:",input,repr(input))
    print("len:",len,repr(len))

    l = [1,"hello"]
    print("list:",l,repr(l))
    i = iter(l)
    print("list_iterator:",i,repr(i))
    t = (1,"hello")
    print("tuple:",t,repr(t))

    print("int type:", int, repr(int))

    d = { "Kent" : "Denise", 6 : 6.2}
    print("dict:",d,repr(d))
    i = iter(d)
    print("dict_keyiterator:",i,repr(i))

disassembler.disassemble(main)

#What it should look like.

#########################################################

#type: str repr
#bool: False False
#int: 6 6
#float: 6.2 6.2
#str: Hello 'Hello'
#print: <built-in function print> <built-in function print>
#iter: <built-in function iter> <built-in function iter>
#input: <built-in function input> <built-in function input>
#len: <built-in function len> <built-in function len>
#list: [1, 'hello'] [1, 'hello']
#funlist: [1, 'hello'] [1, 'hello']
#list_iterator: <list_iterator object at 0x7f8a4b50ae20> <list_iterator object at 0x7f8a4b50ae20>
#tuple: (1, 'hello') (1, 'hello')
#int type: <class 'int'> <class 'int'>
#dict: {6: 6.2, 'Kent': 'Denise'} {6: 6.2, 'Kent': 'Denise'}
#dict_keyiterator: <dict_keyiterator object at 0x7f8a4b512bd0> <dict_keyiterator object at 0x7f8a4b512bd0>
import disassembler



def main():

	x = int(input("Enter an integer: "))
	evenList = []
	
	for i in range(x+1):
	
		if i%2==0 and i!=0:
		
			evenList.append(i)
			
	print(evenList)
			
main()
		
#disassembler.disassemble(main)
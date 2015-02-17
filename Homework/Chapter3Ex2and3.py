import disassembler



def main():

	x = int(input("Enter an integer: "))
	
	evenList = []
	
	if isinstance(x, int):
	
		for i in range(x+1):
	
			if i%2==0 and i!=0:
		
				evenList.append(i)
		
			
		print(evenList)
		
	else:
	
		print("You didn't enter an integer!")
			
main()
		
#disassembler.disassemble(main)
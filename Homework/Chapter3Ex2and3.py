import disassembler



def main():

	x = input("Enter an integer: ")

	#y = int(x)
	
	evenList = []
	
	try:

		y = int(x)
	
		for i in range(y+1):
	
			if i%2==0:
		
				evenList.append(i)
		
	except:
	
		print("You didn't enter an integer!")
			

	print(evenList)

#main()
		
disassembler.disassemble(main)

#Juan Navarro and I worked together for these exercises. 
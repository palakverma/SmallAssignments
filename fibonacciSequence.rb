def displaySequence(number_of_outputs) 
	fibseq = Array.new(number_of_outputs)
	counter = 1  
	firstNum = 1
	secondNum = 1
	while number_of_outputs > counter 
		if counter < 2
			fibseq[0] = 1 
			fibseq[1] = 1 
		else 
			fibseq[counter] = firstNum + secondNum 
			firstNum = fibseq[counter]
			secondNum = fibseq[counter - 1]
		end 
		counter += 1
	end  
	puts fibseq.to_s 
end 


puts "How many numbers would you like to see?"
number_of_outputs = gets.chomp.to_i 

displaySequence(number_of_outputs)



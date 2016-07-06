
def barkingDog(say)
	if say == "woof" then
		puts "WOOF WOOF WOOF" 
	elsif say =="shakil stop" || say == "Shakil STOP!" then
		puts "*Quiet"
	elsif say == "meow" then 
		puts "woof woof woof woof woof" 
	elsif say.include? "treat"
		puts "*Quiet*"
	elsif say == "go away" then
		puts "*dog leaves the room*"
	else 
		puts "woof"
	end 
end


puts "Say something to Shakil the Dog!" 
say = gets.chomp.to_s 

barkingDog(say)
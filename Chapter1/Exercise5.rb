print( 'Guess the number (0-10): ' ) 
name = gets() 
x = rand(10)
if x > name.to_i
	puts("Too small")	
else
	if x < name.to_i
		puts("Too big")		
	else
		puts("Good call, that's a match #{name}")
	end	
end
puts("lucky dip #{x}")

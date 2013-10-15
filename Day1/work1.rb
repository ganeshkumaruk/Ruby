puts 'hello world'
print( 'Enter your name: ' ) 
name = gets().chomp
puts( "Hello #{name}" ) 
puts( name.sub(/([aeiou])/, '\<1>'))
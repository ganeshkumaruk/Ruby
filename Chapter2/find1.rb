File.open("tmp.txt", "r").each { |line|
    puts line
}

file = File.open("tmp.txt", "w+")
file.puts "a spoonful is great but I'd rather have a bowl"
file.close

# safer, less error-prone, more readable
File.open("tmp2.txt", "w+") { |file|
    file.puts "a spoonful is great but I'd rather have a bowl"
}

puts IO.read("tmp.txt")
puts IO.read("tmp2.txt")
scores = { gary: 5, nick: [11,1], ted: 8, the_dude:9 }
print "hash: "; scores
print "array1: "; p scores.to_a
print "array2: "; p scores.to_a.flatten(2)

scores_array1 = scores.to_a
print "array1 to hash again 1: "; p scores_array1.inject(Hash.new) { |memo, pair| memo[pair.first] = pair.last; memo }
print "array1 to hash again 2: "; p Hash[scores_array1]
scores_array2 = scores.to_a.flatten(1)
print "array2 to hash again 1: "; p Hash[scores_array2]
print "array2 to hash again 2: "; p Hash[*scores_array2]
puts "Yup."






a1 = ['apple', 1, 'banana', 2]
h1 = Hash[*a1.flatten]
puts "h1: #{h1.inspect}"

a2 = [['apple', 1], ['banana', 2]]
h2 = Hash[*a2.flatten]
puts "h2: #{h2.inspect}"

a3 = [ ['apple', 1], ['banana', 2], [['orange','seedless'], 3] ]
h3 = Hash[*a3.flatten(1)]
puts "h3: #{h3.inspect}"

h4 = Hash[a3.map {|key, value| [key, value]}]
puts "h4: #{h4.inspect}"

h5 = Hash[a1]
puts "h5: #{h5.inspect}"
puts "a1: #{a1.inspect}"

h6 = Hash.try_convert(a1);
puts " h6: #{a1.inspect}"


h =  {1=> "one", 2 => [2,"two","dos"], 3 => "three"}
puts " h: #{h.flatten.inspect}"

puts " h: #{h.flatten(2)}"

puts "h: #{h.to_a}"

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge!(h2) { |key, v1, v2| v2 }
puts "h1: #{h1.inspect}"

h.each {|key, value|puts "key: #{key} value: #{value}" }
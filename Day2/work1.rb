num = [*(1..16)]
puts "#{num}"
p "#{num[(0..3)]}"
num.each {|n| puts "#{num[((n-4)...n)]}" if (n % 4) == 0}

puts "and"

num.each_slice(4) { |slice| puts "#{slice}" }
 a = [5, 3, 4, 1]
 puts "#{a}"
 puts "inject sum #{a.inject(0) {|sum, i| sum + i}}"
 puts "inject product #{a.inject(0) {|product, i| product + i}}"
 puts "members 2 #{a.member?(2)}"
 puts "select odd #{a.select{|i|i % 2 == 1}}"
 puts "sort #{a.sort}"
 puts "all > 2 #{a.all?{|i|i>2}}"
 puts "any > 2 #{a.any?{|i|i>2}}"
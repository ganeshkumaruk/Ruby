h =  {1=> "one", 2 => [2,"two","dos"], 3 => "three"}

h.each {|key, value|puts "key: #{key} value: #{value}" }

h.each_key{|key|puts "key: #{key}"}

h.each_value {|value|puts "value: #{value}"}
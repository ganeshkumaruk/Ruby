puts "queue/deque: "
deque = [].push("1")
p deque
deque.push("2")
p deque
deque.unshift("a")
p deque
deque.unshift("b")
p deque
puts deque.shift
p deque
puts deque.shift
puts deque.pop
puts deque.pop

puts "list: "
list = [1,2,3].insert(2, "c")
puts list
puts "removed: " + list.delete("c")

puts "(rudimentary) bag/set:"
bag = [1,2,3,3,4,5]
p bag
set = bag.uniq
other_set = [3,5]
p set
p set & other_set

puts "(rudimentary) matrix:"
matrix = [[1,2,3],[4,5,6],[7,8,9]]
p matrix
p matrix.transpose
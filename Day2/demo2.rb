module ToFile
  def filename
    "object_#{self.object_id}.txt"
  end
  def to_f
    File.open(filename, 'w') {|f| f.write(to_s)}
  end
end

class Person
  include ToFile
  attr_accessor :names
  
  def initialize(names)
    @names = names
  end
  def to_s
    names.join(",")
  end
  def split
    @names.each {|n| puts "#{n}"}
  end
end

p = Person.new(['matz', 'ganesh', 'kumar'])
p.to_f
puts "#{p.names}"
p.names.each {|n| puts "#{n}"}
puts "#{p.to_s}"
puts "#{p.split}"
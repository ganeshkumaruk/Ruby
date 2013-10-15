module ActsAsCsv
	def self.included(base)
		base.extend ClassMethods
	end
	module ClassMethods
		def acts_as_csv
		include InstanceMethods
		end
	end
	module InstanceMethods
		
		attr_accessor :headers, :csv_contents
		def initialize
			read
		end
		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ' )
			file.each do |row|
			@csv_contents << CsvRow.new(@headers, row.chomp.split(', ' ))
			end
		end		
		def parse_row(row)
			row.chomp.split(', ')
		end
		def each &blk
			@csv_contents.each &blk
		end

		class CsvRow
			def initialize(headers, row)
				@headers = headers
				@row = row
			end		
			def respond_to?(sym)
        		@headers.index(name.to_s) || super(sym)
      		end			
			def method_missing name, *args, &block
				@row[2]
		        #index = @headers.index(name.to_s)
		        #if index
		          #@row[index]
		        #else
		          #super
		        #end        
      		end			
		end			
	end
end

class RubyCsv # no inheritance! You can mix it in
include ActsAsCsv
	acts_as_csv
end
m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row|puts "#{row.One}"}
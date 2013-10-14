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
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        content_row = row.chomp.split(', ')
        @csv_contents << CsvRow.new(@headers, content_row)
      end
    end
    
    attr_accessor :headers, :csv_contents
    def initialize
      read 
    end

    def each &blk
      @csv_contents.each &blk
    end
  end

  class CsvRow

    attr_accessor :headers, :content_row
    
    def initialize (headers, content_row)
      @headers = headers
      @content_row = content_row
    end

    def method_missing name, *args
      i = @headers.index(name.to_s)
      if i == nil
        super
      else
        return @content_row[i]
      end
    end
  end

end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row|puts row.one}

def rbgrep(pattern, filename)
    regexp = Regexp.new(pattern)
    f = File.new(filename)
    f.each{ |line|
        puts "#{f.lineno}: #{line}" if regexp =~ line
    }
end

rbgrep("guitar", "wikipedia_page.txt")
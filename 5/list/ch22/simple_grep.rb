pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

File.open(filename) do |file|
  file.each_line do |line|
    if pattern =~ line
      print line
    end
  end
end

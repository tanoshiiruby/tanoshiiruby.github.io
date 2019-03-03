pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

count = 0
File.read(filename).scan(pattern) do |s|
  count += 1
end
puts "count: #{count}"

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = open(filename)
while text = file.gets do
  if pattern =~ text
    print text
  end
end
file.close

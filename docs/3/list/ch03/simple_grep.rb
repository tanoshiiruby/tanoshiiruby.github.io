pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
 3:
file = open(filename)
while text = file.gets
  if pattern =~ text
    print text
  end
end
file.close

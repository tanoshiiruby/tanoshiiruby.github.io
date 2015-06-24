pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10       # 出力する最大数
matches = 0            # マッチした行数
file = open(filename)
while text = file.gets
  if matches >= max_matches
    break
  end
  if pattern =~ text
    matches += 1
    print text
  end
end

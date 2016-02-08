pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10      # 出力する最大数
matches = 0           # マッチした行数
file = File.open(filename)
file.each_line do |line|
  if matches >= max_matches
    break
  end
  if pattern =~ line
    matches += 1
    puts line
  end
end
file.close

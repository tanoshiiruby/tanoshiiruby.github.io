file = File.open(ARGV[0])
file.each_line do |line|
  next if /^\s*$/ =~ line  # 空白行
  next if /^#/ =~ line     # シャープで始まる行
  puts line
end
file.close

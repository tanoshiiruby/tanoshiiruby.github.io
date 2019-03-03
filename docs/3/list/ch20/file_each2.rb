File.open("sample.txt") do |f|
  f.each_line do |line|
    print line
  end
end

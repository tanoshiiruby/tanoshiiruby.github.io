f = File.open("sample.txt")
f.each do |line|
  print line
end
f.close

filename = "test.txt"
writen = 0

File.open(filename, "w") do |f|
  while writen < 100_000
    writen += 1
    f.write("a")
    size = File.size(filename)
    p [writen, size] if writen == size
  end
end

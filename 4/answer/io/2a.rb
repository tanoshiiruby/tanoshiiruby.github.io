def reverse(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines.reverse.join()
  end
end

reverse(ARGV[0])

require "stringio"

io = StringIO.new("A\nB\nC\n")
p io.gets  #=> "A\n"
p io.gets  #=> "B\n"
p io.gets  #=> "C\n"

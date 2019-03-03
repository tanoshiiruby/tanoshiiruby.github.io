require "stringio"

io = StringIO.new
io.puts("A")
io.puts("B")
io.puts("C")
io.rewind
p io.read  #=> "A\nB\nC\n"

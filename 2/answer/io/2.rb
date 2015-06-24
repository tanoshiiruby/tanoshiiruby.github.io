def tee(input, *outputs)
  input.each{|line|
    outputs.each{|io| io.write(line) }
  }
end

open(__FILE__){|io|
  tee(io, $stdout, $stderr)
}

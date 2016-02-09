def tail(lines, file)
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue.push(line)
      if queue.size > lines
        queue.shift
      end
    end
  end
  queue.each{|line| print line }
end

puts "==="
tail(10, __FILE__)

puts "==="
tail(3, __FILE__)

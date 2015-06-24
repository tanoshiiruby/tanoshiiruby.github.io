def test_throw
  throw :test
end

puts "test start"
catch(:test) do
  puts "before test_throw()"
  test_throw()
  puts "after test_throw()"
end
puts "test end"

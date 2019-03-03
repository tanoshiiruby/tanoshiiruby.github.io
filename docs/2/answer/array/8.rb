def sum_array(ary1, ary2)
  result = Array.new
  ary1.zip(ary2){|a, b| result << a + b }
  return result
end

p sum_array([1, 2, 3], [4, 6, 8])

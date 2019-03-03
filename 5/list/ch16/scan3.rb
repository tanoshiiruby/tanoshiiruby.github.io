"abracatabra".scan(/(.)(a)/) do |a, b|
  p a+"-"+b
end

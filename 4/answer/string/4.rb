str = "Ruby is an object oriented programming language"
ary = str.split
cap_ary = ary.collect{|word| word.capitalize }

str = ""
cap_ary.each do |s|
  str << s+" "
end
p str

## 別解
p cap_ary.join(" ")

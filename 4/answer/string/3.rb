str = "Ruby is an object oriented programming language"
ary = str.split
p ary.sort_by{|s| s.downcase }

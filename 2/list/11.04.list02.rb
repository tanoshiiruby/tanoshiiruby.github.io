list = ["a", "b", "c", "d"]
list.each_with_index{|elem, i|
  print i+1,"番目の要素は",elem,"です。\n"
}

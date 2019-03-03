# 配列を作成する
ary = (1..100).to_a

# (a) Array#reverseを使う
ary2 = ary.reverse
p ary2

# (b) Array#sortを使う
ary2 = ary.sort{|a, b| -(a <=> b) }
p ary2

# (c) Array#sort_byを使う
ary2 = ary.sort_by{|i| -i }
p ary2

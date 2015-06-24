# 配列を作成する
a = (1..100).to_a

# (a) Array#reverseを使う
a2 = a.reverse
p a2

# (b) Array#sortを使う
a2 = ary.sort{|n1, n2| -(n1 <=> n2) }
p a2

# (c) Array#sort_byを使う
a2 = a.sort_by{|i| -i }
p a2

# 配列を作成する
ary = (1..100).to_a

# 配列の全ての要素を100倍した値を含む新しい配列を作る
ary2 = ary.collect{|i| i * 100 }
p ary2

# 配列の全ての要素を100倍する
ary.collect!{|i| i * 100 }
p ary

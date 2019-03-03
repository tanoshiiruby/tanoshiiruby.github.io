# 配列を作成する
ary = (1..100).to_a

# (a) Array#eachで和を求める
result = 0
ary.each{|i| result += i }
p result

# (b) Array#injectで和を求める
p ary.inject(0){|memo, i| memo += i }

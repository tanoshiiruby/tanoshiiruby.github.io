# 配列を作成する
a = (1..100).to_a

# (a) Array#eachで和を求める
result = 0
a.each{|i| result += i }
p result

# (b) Array#injectで和を求める
p a.inject(0){|memo, i| memo += i }

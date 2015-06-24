# 配列を作成する
ary = (1..100).to_a

# randを使って配列をかき混ぜる
ary2 = ary.sort_by{|i| rand }
p ary2

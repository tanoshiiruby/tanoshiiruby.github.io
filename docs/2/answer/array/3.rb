# 配列を作成する
ary = (1..100).to_a

# aryから3の倍数だけを取り出す
ary2 = ary.select{|i| i % 3 == 0 }
p ary2

# aryから3の倍数以外の数を削除する
ary.reject!{|i| i % 3 != 0 }
p ary

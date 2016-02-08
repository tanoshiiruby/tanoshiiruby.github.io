x = y = z = 0       # xとyとzを初期化
ary = [1, 2, 3]
ary.each do |x; y|  # ブロック変数x、ブロックローカル変数yを使用
  y = x             # ブロックローカル変数yを代入
  z = x             # ブロックローカルでない変数zを代入
  p [x, y, z]       # ブロック内のx、y、zの値を確認する
end
puts
p [x, y, z]         # x、y、zの値を確認する

x = 1            # xを初期化
y = 1            # yを初期化
ary = [1, 2, 3]

ary.each do |x|  # ブロック変数としてxを使用する
  y = x          # yにxを代入する
end

p [x, y]         # xとyの値を確認する

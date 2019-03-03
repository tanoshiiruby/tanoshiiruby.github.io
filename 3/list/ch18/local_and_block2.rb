ary = [1, 2, 3]

ary.each do |x|      # ブロック変数としてxを使用する
  ：
end

p x                  # xの値を確認するとエラー（NameError）

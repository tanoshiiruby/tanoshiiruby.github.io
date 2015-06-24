str = "Ruby is an object oriented programming language"

# (a) 各単語を要素とする配列を作る
ary = str.split
p ary

# (b) 配列をアルファベット順にソートする
p ary.sort

# (c) 配列を大文字と小文字を区別せずに単語順にソートする
p ary.sort_by{|s| s.downcase }

# (d) 全ての単語の先頭を大文字にする
ary = str.split
cap_ary = ary.collect{|word| word.capitalize }
p cap_ary.join(" ")

# (e) 文字の出現数をカウントする
result = Hash.new(0)             # 集計用のHashを用意する
chars = str.split(//)            # 文字列を文字単位に分割する
chars.each{|c| result[c] += 1 }  # 文字毎に出現回数を数える
result.keys.sort.each{|c|    
  puts "'#{c}': #{"*" * result[c]}"
}

# 単語数のカウント

count = Hash.new(0)

## 単語の集計
while line = gets
  words = line.split
  words.each{|word|
    count[word] += 1
  }
end

## 結果の出力
count.sort{|a,b|
  a[1] <=> b[1]
}.each{|key, value|
  print "#{key}: #{value}〓n"
}

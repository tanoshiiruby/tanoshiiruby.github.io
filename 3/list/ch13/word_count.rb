# 単語数のカウント
 2:
count = Hash.new(0)
 4:
## 単語の集計
while line = gets
  words = line.split
  words.each do |word|
    count[word] += 1
  end
end
12:
## 結果の出力
count.sort{|(k1,v1), (k2,v2)| v1 <=> v2}.each do |key, value|
  print "#{key}: #{value}\n"
end

sum = 0
outcome = {"参加費"=>1000, "ストラップ代"=>1000,"懇親会会費"=>4000}
outcome.each{|item, price|
  sum += price
}
print "合計: ",sum,"\n"

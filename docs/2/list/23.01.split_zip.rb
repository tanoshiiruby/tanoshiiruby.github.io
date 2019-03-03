t0 = Time.now     # 処理の開始時刻を取得する
open("ken_all.csv").each{|line|
  line.chomp! 
  line.split(",") 
}
p Time.now - t0   # 処理が終了した時刻との差を出力する

require "csv"            # csvライブラリを使う

code = ARGV[0]           # 引数を取り出す
start_time = Time.now    # 処理の開始時刻を取得する

# Shift_JISをUTF-8に変換する指定をしてCSVファイルを開く
CSV.open("KEN_ALL.CSV","r:Shift_JIS:UTF-8") do |csv|
  csv.each do |record|
    # 郵便番号が引数の指定と一致したらそのレコードを表示する
    puts record.join(" ") if record[2] == code
  end
end
p Time.now - start_time  # 処理が終了した時刻との差を表示する

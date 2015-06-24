CLF_REGEXP = /
  \A                        (?# 行頭)
  (\S+)\s                   (?# 1 address)
  (\S+)\s                   (?# 2 ident)
  (\S+)\s                   (?# 3 user)
  \[([^\]]+)\]\s            (?# 4 time)
  "(\S+)\s(\S+)\s(\S+)"\s   (?# 5 6 7 method url version)
  (\d+)\s                   (?# 8 status)
  (\d+|-)\s                 (?# 9 bytes)
  "([^"]*)"\s               (?# 10 referer)
  "([^"]*)"                 (?# 11 user_agent)
  \Z                        (?# 行末)
/x

count = 0                   # 行数を初期化する
File.open(ARGV[0]) do |io|  # ファイルを開く
  io.each_line do |line|    # 1行ごとに処理する
    if CLF_REGEXP =~ line   # 正規表現にマッチしたら
      p $~.captures         # キャプチャした部分を表示する
    end
    count += 1              # 行数を更新する
  end
end
puts count                  # 行数を表示する

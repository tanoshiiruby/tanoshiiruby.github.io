# 日ごとのアクセス数を調べる・日付の出力

while line = gets()
  datetime = line.chomp.split(/\s/)[3]
  if %r|\[(\d+)/(\w+)/(\d+)| =~ datetime
    day, month, year = $1, $2, $3
    print "#{year}/#{month}/#{day}\n"
  end
end

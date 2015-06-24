# encoding: utf-8

def to_utf8(str_euc, str_sjis)
  ## encodeメソッドを使ってそれぞれUTF-8に変換してから連結します
  str_euc.encode("UTF-8") + str_sjis.encode("UTF-8")
end

## 以下のように実行します。
str_euc  = "こんにちは".encode("EUC-JP")
str_sjis = "さようなら".encode("Shift_JIS")

puts to_utf8(str_euc, str_sjis)

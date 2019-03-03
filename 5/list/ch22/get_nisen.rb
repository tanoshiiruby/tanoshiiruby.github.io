require "open-uri"

url = "http://www.aozora.gr.jp/cards/001779/files/56647_58167.html"
filename = "nisendouka.html"

File.open(filename, "wb") do |f|
  text = open(url, "r:shift_jis").read
  f.write text                   # Shift_JIS環境（Windows）の場合
  #f.write text.encode("utf-8")  # UTF-8を使う環境はこちら
end

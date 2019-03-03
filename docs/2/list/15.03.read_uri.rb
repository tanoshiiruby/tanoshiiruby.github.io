require "open-uri"

# HTTP経由でデータを読み込む
open("http://www.ruby-lang.org"){|io|
  puts io.read       # Rubyのホームページをコンソールに出力する
}

# FTP経由でデータを読み込む
open("ftp://www.ruby-lang.org/pub/ruby/ruby-1.8.4.tar.gz"){|io|
  open("ruby-1.8.4.tar.gz", "w"){|f|  # ローカルファイルを開く
    f.write(io.read)
  }
}

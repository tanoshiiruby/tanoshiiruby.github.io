filename = ARGV[0]
file = File.open(filename) # ① ファイルを開く
text = file.read           # ② テキストデータを読み込む
print text                 # ③ テキストデータを出力する
file.close                 # ④ ファイルを閉じる

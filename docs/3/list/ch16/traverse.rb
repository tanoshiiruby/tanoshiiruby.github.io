def traverse(path)
  if FileTest.directory?(path) # ディレクトリの場合
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."      # ※
      next if name == ".."     # ※
      traverse(path + "/" + name)
    end
    dir.close
  else
    process_file(path)         # ファイルに対する処理
  end
end
def process_file(path)
  puts path                    # ひとまず出力するだけ
end

traverse(ARGV[0])

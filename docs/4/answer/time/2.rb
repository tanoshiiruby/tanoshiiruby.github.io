def ls_t(path)
  entries = Dir.entries(path)                # エントリを取得
  entries.reject!{|name| /^\./ =~ name }     # "."で始まるファイルを削除

  mtimes = Hash.new                          # mtimeを収集しながらソート
  entries = entries.sort_by do |name|
    mtimes[name] = File.mtime(File.join(path, name))
  end

  entries.each do |name|
    printf("%-40s %s\n", name, mtimes[name]) # ファイル名とmtimeを表示
  end
rescue => ex
  puts ex.message
end

ls_t(ARGV[0] || ".")

require 'find'

IGNORES = [ /^\./, /^CVS$/, /^RCS$/ ]

def listdir(top)
  Find.find(top) do |path|
    if FileTest.directory?(path)     # pathがディレクトリならば
      dir, base = File.split(path)
      IGNORES.each do |re|
        if re =~ base                # 無視したいディレクトリの場合
          Find.prune                 # それ以下の検索を省略する
        end
      end
      puts path                      # 出力する
    end
  end
end

listdir(ARGV[0])

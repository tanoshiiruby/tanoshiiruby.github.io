require 'find'

IGNORES = [ /^\./, /^CVS$/, /^RCS$/ ]

def listdir(top)
  Find.find(top){ |path|
    if FileTest.directory?(path)     # pathがディレクトリならば
 
      dir, base = File.split(path)
      IGNORES.each{|re|
        if re =~ base                # 無視したいディレクトリの場合
          Find.prune                 # それ以下の検索を省略する
        end
      }

      puts path                      # 出力する
    end
  }
end

listdir(ARGV[0])

require 'htmlscanner'

Link = Struct.new(:url, :text)  # URLとテキストを保存するクラス

def getlinks(data)
  list = Array.new          # 検索結果を保存するためのリスト(配列)
  current = nil             # 現在処理中のリンク

  HTML.scan(data){|item|
    case item
    when HTML::StartTag
      case item.name
      when "A"
        # A要素の開始タグを受け取ったら，新しい Link オブジェクトを生成する
        current = Link.new(item.attribute['href'], "")
      when "IMG"
        # IMG要素は内容を持たないので，そのままリストに追加する
        src = item.attribute['src']
        alt = item.attribute['alt']
        list.push(Link.new(src, alt))
        current.text << alt if current     # テキストを追加する
      end
    when HTML::EndTag
      if item.name == "A" and current
        # A要素の終了タグを受け取ったら，currentをリストに追加する
        list.push(current) if current.url
        current = nil
      end
    when HTML::TextData
      current.text << item.value if current # テキストを追加する
    end
  }
  return list
end

#  main
data = open(ARGV[0]){|io| io.read }
list = getlinks(data)
list.each{|link|
  next unless /^http:/ =~ link.url
# URLがhttp://...で始まるときのみ出力
  link.text.gsub!(/\s+/, " ")        # 複数のスペースを圧縮
  link.text.gsub!(/ $/, "")          # 行末のスペースを削除
  link.text.gsub!(/^ /, "")          # 行頭のスペースを削除
  puts link.text                     # テキストを出力
  puts "   " + link.url              # URLを出力
}

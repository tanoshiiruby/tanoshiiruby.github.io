require 'htmlscanner.rb'

data = DATA.read # __END__ 以降の部分は DATA から読むことができる

HTML.scan(data){|item|
  case item
  when HTML::Comment                     # コメント
    p [ item.type, item.value ]
  when HTML::MarkUpDecl                  # マークアップ宣言
    p [ item.type, item.value ]
  when HTML::StartTag                    # 開始タグ
    p [ item.type, item.name, item.attribute ]
  when HTML::EndTag                      # 終了タグ
    p [ item.type, item.name ]
  when HTML::TextData                    # テキストデータ
    tdata = item.value
    tdata.gsub!(/\s+/, " ")              # 空白をまとめる
    tdata.sub!(/ $/, "")                 # 末尾の空白を削除する
    p [ item.type, tdata ] unless tdata.empty? # 空でなければ出力する
  end
}
__END__
<!DOCTYPE HTML>
<HTML>
  <BODY>
    <A name="FOO" href="foo" attr >foo</A>
    <A name='BAR' href='bar' attr >bar</A>
    <A name=BAZ href=baz attr >baz</A>
    <!--
      <A href="dummy">dummy</A>
    -->
  <BODY>
</HTML>

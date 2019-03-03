HTMLRegexp = /(<!--.*?--\s*>)|
              (<(?:[^"'>]*|"[^"]*"|'[^']*')+>)|
              ([^<]*)/xm
 
data = DATA.read # __END__ 以降の部分は DATA から読むことができる

data.scan(HTMLRegexp){|match|
  comment, tag, tdata = match[0..2]
  if comment                   # コメントにマッチした場合
    p [ "Comment", comment ]
  elsif tag                    # タグにマッチした場合
    p [ "Tag", tag ]
  elsif tdata                  # テキストデータにマッチした場合
    tdata.gsub!(/\s+/, " ")    # 空白をまとめる
    tdata.sub!(/ $/, "")       # 末尾の空白を削除する
    p [ "TextData", tdata ] unless tdata.empty?
        # 空でなければ出力する
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

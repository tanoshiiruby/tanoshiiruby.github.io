message = "オブジェクト指向は難しい! なんて難しいんだ!"
message.sub!(/難しい/, "簡単だ")
message.sub!(/難しいんだ/, "簡単なんだ")
puts message

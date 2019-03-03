class Book
  include Comparable

  def <=>(other)
    t = @genre.to_s <=> other.genre.to_s  # ジャンルを比較する
    return t if t != 0                # 違うジャンルならそのまま返す
    return @title <=> other.title     # タイトルを比較した結果を返す
  end

  attr_accessor :title, :author, :genre

  def initialize(title, author, genre=nil)
    @title  = title
    @author = author
    @genre = genre
  end
end

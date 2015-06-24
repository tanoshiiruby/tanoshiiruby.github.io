require 'book'

class BookList
  ## 初期化
  def initialize()
    @booklist = Array.new
  end
  ## 新しい本を加える
  def add(book)
    @booklist.push(book)
  end
  ## 本の冊数を返す
  def length
    @booklist.length
  end
  ## n番目に格納されている本を別の本にする
  def []=(n,book)
    @booklist[n] = book
  end
  ## n番目に格納されている本を返す
  def [](n)
    @booklist[n]
  end
  ## 本をリストから削除する
  def delete(book)
    @booklist.delete(book)
  end
end

require "booklist_enum"

booklist = BookList.new
booklist.add(Book.new("Software", "Rucker", "SF"))
booklist.add(Book.new("BABEL-17", "Delany", "SF"))
booklist.add(Book.new("Programming Perl",   "Wall",
  "Computer"))
booklist.add(Book.new("Programming Pearls", "Bentley",
 "Computer"))
titles = booklist.collect{|book|
  book.title
}
p titles

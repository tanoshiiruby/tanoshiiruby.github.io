require "gdbm"

module JZipCode
  COLUMN_ZIP = 2
    
  module_function

  def make_database(zipfile, dbfile)
    return if File.exist?(dbfile)
    open(zipfile){|io|
      GDBM.open(dbfile, 0644, GDBM::NEWDB){|db|
        io.each{|line|
          colums = line.split(",")
          zipcode = colums[COLUMN_ZIP].delete('"')
          if tmp = db[zipcode]  # すでにレコードがある場合は追加する
            line = tmp + line
          end
          db[zipcode] = line
        }
      }
    }
  end
end

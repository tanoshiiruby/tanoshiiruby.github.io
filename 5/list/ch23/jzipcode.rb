require 'sqlite3'
require "csv"

class JZipCode
  CSV_COLUMN = {code: 2, pref: 6, city: 7, addr: 8}

  def initialize(dbfile)
    @dbfile = dbfile
  end

  def create(zipfile)
    return if File.exist?(@dbfile)
    SQLite3::Database.open(@dbfile) do |db|
      db.execute(<<-SQL)
        CREATE TABLE IF NOT EXISTS zip_codes
          (code TEXT, pref TEXT, city TEXT, addr TEXT, alladdr TEXT)
      SQL
      db.execute("BEGIN TRANSACTION")
      CSV.open(zipfile, "r:Shift_JIS:UTF-8") do |csv|
        csv.each do |rec|
          data = Hash.new
          CSV_COLUMN.each{|key, index| data[key] = rec[index] }
          data[:alladdr] = data[:pref] + data[:city] + data[:addr]
          db.execute(<<-SQL, data)
            INSERT INTO zip_codes VALUES
              (:code, :pref, :city, :addr, :alladdr)
          SQL
        end
      end
      db.execute("COMMIT TRANSACTION")
    end
    return true
  end

  def find_by_code(code)
    ret = []
    SQLite3::Database.open(@dbfile) do |db|
      db.execute(<<-SQL, code){|row| ret << row.join(" ") }
        SELECT code, alladdr
          FROM zip_codes
         WHERE code = ?
      SQL
    end
    return ret.map{|line| line + "\n"}.join  
  end

  def find_by_address(addr)
    ret = []
    SQLite3::Database.open(@dbfile) do |db|
      like = "%#{addr}%"
      db.execute(<<-SQL, like){|row| ret << row.join(" ") }
        SELECT code, alladdr
          FROM zip_codes
         WHERE alladdr LIKE ?
      SQL
    end
    return ret.map{|line| line + "\n"}.join  
  end
end

if __FILE__ == $0
  dbfile = "jzipcode.db"
  jzipcode = JZipCode.new(dbfile)
  jzipcode.create("KEN_ALL.CSV")
  puts jzipcode.find_by_code("3210202")
  puts jzipcode.find_by_address("猫屋敷")
end

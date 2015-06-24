require "gdbm"
require "csv"

module JZipCode
  COLUMN_ZIP = 2
  ZIP_FILE = "ken_all.csv"
  DB_FILE = "ken_all.db"
    
  module_function

  def make_database(zipfile, dbfile)
    return if File.exist?(dbfile)
    open(zipfile){|io|
      GDBM.open(dbfile, 0644, GDBM::NEWDB){|db|
        io.each{|line|
          colums = line.split(",")
          zipcode = colums[COLUMN_ZIP].delete('"')
          if tmp = db[zipcode]
            line = tmp + line
          end
          db[zipcode] = line
        }
      }
    }
  end

  def find(code)
    make_database(ZIP_FILE, DB_FILE)
    GDBM.open(DB_FILE, nil, GDBM::READER|GDBM::NOLOCK){|db|
      if line = db[code]
        return CSV.parse(line)
      end
    }
    return nil
  end
end

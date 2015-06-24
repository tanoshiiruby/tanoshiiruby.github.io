require "gdbm"
require "csv"

module JZipCode
  ZIP_FILE = "ken_all.csv"
  DB_FILE = "ken_all.db"

  module_function

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

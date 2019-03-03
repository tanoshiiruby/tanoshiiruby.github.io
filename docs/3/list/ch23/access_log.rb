module AccessLog
  CLF_REGEXP = /
    \A                        (?# 行頭)
    (\S+)\s                   (?# 1 address)
    (\S+)\s                   (?# 2 ident)
    (\S+)\s                   (?# 3 user)
    \[([^\]]+)\]\s            (?# 4 time)
    "(\S+)\s(\S+)\s(\S+)"\s   (?# 5 6 7 method url version)
    (\d+)\s                   (?# 8 status)
    (\d+|-)\s                 (?# 9 bytes)
    "([^"]*)"\s               (?# 10 referer)
    "([^"]*)"                 (?# 11 user_agent)
    \Z                        (?# 行末)
  /x

  Entry = Struct.new(   # 解析結果を保存するためのクラス
    :address, :ident, :user, :time,
    :method, :url, :version, :status, :byte,
    :referer, :user_agent
  )

  module_function

  def each_entry(file)
    file.each_line do |line|
      if entry = parse(line)
        yield(entry)
      end
    end
  end

  def parse(line)
    if m = CLF_REGEXP.match(line)
      return Entry.new(*m.captures)
    end
    $stderr.puts("parse failure: #{line.dump}")
    return nil
  end
end

require "rbconfig"

def print_libraries
  $:.each{|path|
    next unless FileTest.directory?(path)
    dlext = RbConfig::CONFIG["DLEXT"]
    Dir.open(path){|dir|
      dir.each{|name|
        if name =~ /\.rb$/i || name =~ /\.#{dlext}$/i
          puts name
        end
      }
    }
  }
end

print_libraries

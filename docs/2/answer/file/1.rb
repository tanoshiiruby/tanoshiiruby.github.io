def print_libraries
  $:.each{|path|
    next unless FileTest.directory?(path)
    Dir.open(path){|dir|
      dir.each{|name|
        if name =~ /\.rb$/i
          puts name
        end
      }
    }
  }
end

print_libraries

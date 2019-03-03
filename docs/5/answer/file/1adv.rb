require "rbconfig"

def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path)
    dlext = RbConfig::CONFIG["DLEXT"]
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i || name =~ /\.#{dlext}$/i
          puts name
        end
      end
    end
  end
end

print_libraries

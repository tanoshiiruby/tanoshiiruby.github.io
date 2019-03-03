def traverse(path)
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
    unless FileTest.directory?(name)
      process_file(name)
    end
  end
end

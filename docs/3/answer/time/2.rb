def ls_t(path)
  entries = Dir.entries(path)                # ����ȥ�����
  entries.reject!{|name| /^\./ =~ name }     # "."�ǻϤޤ�ե��������

  mtimes = Hash.new                          # mtime��������ʤ��饽����
  entries = entries.sort_by do |name|
    mtimes[name] = File.mtime(File.join(path, name))
  end

  entries.each do |name|
    printf("%-40s %s\n", name, mtimes[name]) # �ե�����̾��mtime��ɽ��
  end
rescue => ex
  puts ex.message
end

ls_t(ARGV[0] || ".")

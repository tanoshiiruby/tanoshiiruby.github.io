wday = {
  "sunday"    => "������",
  "monday"    => "������",
  "tuesday"   => "������",
  "wedensday" => "������",
  "thursday"  => "������",
  "friday"    => "������",
  "saturday"  => "������",
}

%w(sunday monday tuesday wedensday thursday friday saturday).each do |day|
  puts "��#{day}�פ�#{wday[day]}�Τ��ȤǤ���"
end

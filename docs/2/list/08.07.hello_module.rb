module HelloModule            # moduleʸ
  Version = "1.0"             # ���
  def hello(name)             # �᥽�åɤ
    print "Hello, ", name, ".\n"
  end
  module_function :hello      # hello��⥸�塼����Ȥ��Ƹ������
end

p HelloModule::Version        #=> "1.0"
HelloModule.hello("Alice")    #=> Hello, Alice.

include HelloModule           # ���󥯥롼�ɤ��Ƥߤ
p Version                     #=> "1.0"
hello("Alice")                #=> Hello, Alice.

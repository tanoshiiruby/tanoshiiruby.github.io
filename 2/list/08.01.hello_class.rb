class HelloWorld                 # classʸ
  def initialize(myname="Ruby")  # initialize�᥽�å
    @name = myname               # ���󥹥��󥹿��ν��
  end
  def hello                      # ���󥹥��󥹥᥽�å
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob   = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby  = HelloWorld.new

bob.hello

class WarningTest
  def initialize
    @test = "test."
  end
  def test
    print @tset,"\n"     ##「@test」を「@tset」と書いている!
  end
end

sample_test = WarningTest.new
sample_test.test

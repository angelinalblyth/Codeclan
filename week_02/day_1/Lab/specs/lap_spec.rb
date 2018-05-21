require("minitest/autorun")
require("minitest/rg")
require_relative("../lab")

class TestStudent < MiniTest::Test

  def test_student_account
    student_account = StudentAccount.new("Angelina", "G6")
  end

end

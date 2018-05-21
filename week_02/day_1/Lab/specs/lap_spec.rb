require("minitest/autorun")
require("minitest/rg")
require_relative("../lab")

class TestStudent < MiniTest::Test

  def test_student_account
    student_account = Student.new("Angelina", "G6")
    assert_equal("Angelina", student_account.student_name)
  end

  def test_student_cohort
    student_account = Student.new("Angelina", "G6")
    assert_equal("G6", student_account.student_cohort)
  end

end

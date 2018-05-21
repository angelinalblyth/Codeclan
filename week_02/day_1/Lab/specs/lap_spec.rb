require("minitest/autorun")
require("minitest/rg")
require_relative("../lab")

class TestStudent < MiniTest::Test

  def test_student_name
    student_account = Student.new("Angelina", "G6")
    assert_equal("Angelina", student_account.student_name)
  end

  def test_student_cohort
    student_account = Student.new("Angelina", "G6")
    assert_equal("G6", student_account.student_cohort)
  end

  def test_update_student_name
    student_account = Student.new("Angelina", "G6")
    student_account.update_student_name("Grant")
    assert_equal("Grant", student_account.student_name)
  end

  def test_update_student_cohort
    student_account = Student.new("Angelina", "G6")
    student_account.update_student_name("G7")
    assert_equal("G7", student_account.student_name)
  end

  def test_student_can_talk
    student_account = Student.new("Angelina", "G6")
    can_talk = student_account.student_can_talk("I can talk")
    assert_equal("I can talk", can_talk)
  end

end

class Student

  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

  def student_name()
    return @student_name
  end

  def student_cohort()
    return @student_cohort
  end

  def update_student_name(new_name)
    @student_name = new_name
  end

  def update_student_cohort(new_cohort)
    @student_cohort = new_cohort
  end

  def student_can_talk(can_talk)
    return can_talk
  end

  def favourite_programming_language(lang)
    return("My favourite language is #{lang}.")
  end

end

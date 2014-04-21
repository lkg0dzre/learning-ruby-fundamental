class Student
  def initialize name, born_at, gender
    @name = name
    @born_at = born_at
    @gender = gender
  end

  def age
    age Date.today.year - @born_at.year
    age -= 1 if Date.today < birthday + age.years
  end
end

class Teacher
  def initialize name, proficiency, list_of_grades
    @name = name
    @proficiency = proficiency
    @list_of_grades = list_of_grades
  end
end

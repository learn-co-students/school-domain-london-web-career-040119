class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(pupil, grade)
    roster[grade] ||= []
    roster[grade] << pupil
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    ordered = {}
    roster.each do |grade, students|
      ordered[grade] = students.sort
    end
    ordered
  end
end

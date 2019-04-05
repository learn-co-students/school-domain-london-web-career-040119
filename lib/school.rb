require "pry"
# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted_student = {}
    roster.each do |grade, students|
      sorted_student[grade] = students.sort
    end
    sorted_student
  end

end

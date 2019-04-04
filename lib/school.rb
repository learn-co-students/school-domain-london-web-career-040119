require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade].push(student_name)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.transform_values { |students| students.sort}

   end

end

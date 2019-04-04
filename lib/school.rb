require "pry"

class School

  attr_accessor :roster
  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
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
    # @roster[genre].sort
    new_hash ={}
    a = @roster.each {|key, val|
      new_hash[key] = val.sort
    }
    new_hash
  end

end

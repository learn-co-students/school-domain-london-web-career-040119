# code here!
class School

  attr_reader :name
  attr_accessor :roster

  def initialize(name,roster={})
    @name = name
    @roster = roster
  end

  def add_student(student,grade)
    if self.roster.key?(grade)
      self.roster[grade] << student
    else
      self.roster[grade] = [student]
    end
  end

  def grade(grade)
    return self.roster[grade]
  end

  def sort
    roster.transform_values{|v| v.sort}
  end

end

# school = School.new("Example School")
# puts school.name
# puts school.roster

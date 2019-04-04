class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade]= []
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each_value(&:sort!)
  end

end

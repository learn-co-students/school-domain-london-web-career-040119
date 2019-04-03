# code here!
class School


  def initialize(school)
    @school = school
  end

  def roster
    return {}
  end

  def grade=(grade)
    return roster[grade].values
  end

  def sort
    sorted_roster = roster.values.sort
    return sorted_roster
  end

end

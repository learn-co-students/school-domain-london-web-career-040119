class School # first we define a method called Class

  attr_accessor :name, :roster # here we are giving accress to read and write the instant varibales

  def initialize(name) #here we are initializing the class with a name
    @name = name #setting the name as an instanct variable - to call name: School = School.new("Bayside High School")
    @roster = {} # this roaster also needed in initilization and is going to be equal to an empty hash in which we will add too. it will be used to add keys of grade levels - to call this school.roster
  end # end of initilaize method

# in the below method we use the ||# which means if roster[grade](right side) is falsey or undefined then set it equal to empty array (right side) - this method ||= method works if the left side is undefined or falsey its equal to what you set on the right side but if it is defined then its equal to itself.

  def add_student(student_name, grade) # this method will allow us to add students to the School by passing the students name and grade as an arguement #
    roster[grade] ||= [] # frist we need to create a "new key" that points to an array - we need to do this step to be able to
    roster[grade] << student_name # now we can push the students name(new value ) in to the array
  end  # end of add student method

  def grade(student_grade) # this method should pass a grade number for example grade 9 then out put all the students names in this grade - in an array
    roster[student_grade] #roaster is the empty has from the start which we have been passing more hashed into from add student and it will return the array of the grade which is passed in the arguement of this method
  end # end of the grade method

  # this method should arrange the students in each grade by alphabetical order

  def sort # this method should take each grade(key) from the hash and sort its (values) students name in alphabetical order
    sorted = {} # frist we creat an empty hash that we can put the sorted version in
    roster.each do |grade, students| # now we use the each method to iterate the roaster setting each key=grade and value= the array students
      sorted[grade] = students.sort #now we will pass the grade though as a new key in the sorted hash and have it set to a new array full the students name in that grade in alphabetical order
    end #end of each iteration

    sorted # and finially print the sorted hash

  end #end of sort method

end #end of the School class

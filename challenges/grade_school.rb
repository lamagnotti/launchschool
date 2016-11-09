# Write a small archiving program that stores students' names along with the grade that they are in. All students only have one name.

# We need to be able to do these 3 things:
# 1) Add a student's name to the roster for a grade
# 2) Get a list of all students enrolled in a grade
# 3) Get a sorted list of all students in all grades

class School
  def initialize
    @roster = {}
  end

  def to_h
    result = {}
    @roster.keys.sort.each do |key|
      result[key] = @roster[key].sort
    end
    result
  end

  def add(name, grade)
    @roster[grade] = grade(_grade) << name
  end

  def grade(_grade)
    return [] unless @roster[_grade]
    @roster[_grade]
  end
end

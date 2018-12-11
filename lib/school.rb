class School

attr_reader :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    roster[@grade] = [] if !@roster.has_key?(@grade)
    roster[@grade] << @name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end 
  end

end

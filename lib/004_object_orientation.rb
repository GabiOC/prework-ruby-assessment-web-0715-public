class School
	attr_accessor :students, :instructors, :name, :location # can read & write these instance variables
	attr_reader :ranking # can't change its own ranking, per spec on line 67

	# constructor
	def initialize(name, location, ranking)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = []
		@@school << self # append current value to end of @@school array
		@@school_count += 1 # increment by one every time School class is instantiated
	end

	def self.all
		@@school
	end

	def self.count
		@@school_count
	end

	def self.reset_all
		@@school = [] # empty the @@school array
		@@school_count = 0 # reset counter to 0
	end

	def add_student(name, grade, semester)
		@students.push({name: name, grade: grade, semester: semester}) # push new student to @students array
	end

	def remove_student(name)
		@students.delete(name) # array delete method: array.delete(obj)
	end
end
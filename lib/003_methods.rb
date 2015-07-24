# code your methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

def get_grade(school, name)
	school[:students].each do |x|
		if x[:name] == name
			return x[:grade]
		end
	end
end

def update_subject(school, name, new_subject)
	school[:instructors].each do |x|
		if x[:name] == name
			x[:subject] = new_subject
		end
	end
end

def add_new_student(school, name)
	school[:students].push({:name => name})
end

def add_new_key(school, new_key, new_value)
	school[new_key] = new_value
end
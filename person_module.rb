module Person
	attr_accessor(:name, :age, :position, :gender)

	def initialize(name, age, position)
		@name = name
		@age = age
		@position = position
	end

	def gender?(gender)
		if gender.downcase == "male"
			return true
		else
			return false
		end
	end

end

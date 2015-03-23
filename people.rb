require_relative("person_module.rb")

class People
	# module is exclusive to each class it's included in
	include(Person)
end

person = People.new("Dan", 30, "DevHut")
p(person)

class Students
	include(Person)
end

student = Students.new("Johnny Doe", 17, "High School Junior")
student.gender = "male"

if student.gender?(student.gender)
	puts("He should play ball")
end

p(student)

# make Person module available in main object by including it!
include(Person)
puts(Person::gender?("MALE"))
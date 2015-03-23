# puts / intro ****************************************************************************************

=begin
puts("Your name please...")
first_name = gets().chomp()
puts( "Hello #{first_name}, please enter your last name..." )
last_name = gets().chomp()
puts("Thanks for coming #{first_name}" + " " + "#{last_name}")
=end

# strings *********************************************************************************************

=begin
greeting = "Hello"
target = "people!"
greeting = greeting + " " + target
puts greeting
puts greeting * 5
puts 5 * greeting - break!
greeting = "#{greeting} #{target}"
puts greeting
escaped_string = "I\'m escaped"
#un-mutated
puts escaped_string.upcase
puts escaped_string.reverse
puts escaped_string
#escaped_string.length.upcase wont work!
string_length = escaped_string.length
puts string_length.class
=end

# integers *********************************************************************************************

num = 5
num += 3
puts num
puts num.next
puts num.abs

# integers are part of one of two subclasses: fixnum
puts 5.class
puts 1234.class

# bignum with 20 places
puts 12345678912345678912.class

# important to use floats when percision is needed
floatX = 10 / 3
floatY = 10.0 / 3 # percision
puts floatX
puts floatY
puts floatY.round

# multi-param loops ***********************************************************************************

teams = ["raiders", "broncos", "rams", "saints"]
# avoid naming block vars the same as other vars
teams.each do |t|
	puts(t)
end

puts("*****************************")

teams.each { |t|
	puts(t)
}

puts("*****************************")

for x in 1...10 do
	puts(x)
end

puts("*****************************")

(1..10).each do |x|
	puts(x)
end

conference = ["AFC", "NFC"]

nfl = [teams, conference]

for (a,b) in nfl
	puts("#{a}, #{b}")
end

name = ["d", "a", "n", "l", "o", "p", "e", "z"]

puts(name[0..5])
puts(name[0...5])

[[1,2,3],[4,5,6],[7,8,9]].each do 
	|a,b,c| 
		puts "#{a}, #{b}, #{c}" 
end

puts "without 'do' and 'end'" 

[[1,2,3],[4,5,6],[7,8,9]].each { 
	|a,b,c| 
		puts "#{a}, #{b}, #{c}" 
}

puts "using { } and fewer block parameters" 

[[1,2,3],[4,5,6],[7,8,9]].each { 
  |a,b| 
    puts " #{a}, #{b}"
}  

# until / while 
goodAnswer = false
while (not goodAnswer)
  puts 'Do you like eating tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' or answer == 'no')
    goodAnswer = true
  else
    puts 'Please answer "yes" or "no".'
  end
end

class Snooze

	$hours_asleep = 0 # global variable

	def tired?	
		if $hours_asleep >= 7 then
				# reset hours_asleep var to 0
		    $hours_asleep = 0
	 		return false
	 	else
	 		$hours_asleep += 1
	 		return true
	 	end 		
	end

	def snore
		puts('snore....')
	end

	def sleep
	 	puts("z" * $hours_asleep)  
	end

end

snooze = Snooze.new

# while
puts("** basic while **")
# while tired is true. wont run if condition is met
while snooze.tired? 
	snooze.sleep
end

puts "** while modifier **"
snooze.sleep while snooze.tired?

puts "** using begin...end executes at least once **"
$hours_asleep = 7 
begin 
  snooze.sleep
  snooze.snore 
end while snooze.tired?

# until
puts "** until tired is NOT true **"
until !snooze.tired? 
  snooze.sleep
end

puts "** until modifier **"
snooze.sleep until !snooze.tired?

puts "** using begin...end executes at least once **"
$hours_asleep = 7 
begin 
  snooze.sleep
  snooze.snore 
end until !snooze.tired?

# code block *******************************************************************************************

x = 5 
b = 2
# FAIL - cant return in a code block - it already does!
if x > 10
	x += 5
	puts("the value of x is #{x}")
	#return x
else
	puts("x had no value")
	#return x
end

def demo_method
	car = "BMW"
end

#puts(car) FAIL 

# class methods ****************************************************************************************





# modules **********************************************************************************************

# load is used when you need to "re-load" the file, it will load the file each time it's called
# require will load it once, and not again if it's already there
# include will include the code from the module in that particular part of the file/program

module BaseCarInfo

	attr_accessor :year, :color

	def my_car
		puts "My car is #{@year} #{@color}"
	end

end

# name spacing Time wont work
module OurTime

	attr_accessor(:current_time)
	class Time
		# def the_time
		# 	@current_time = Time.now
		# end

		def what_time
			puts("Get a watch!")
		end

	end

end

class Car 
	include BaseCarInfo
end

the_time = OurTime::Time.new
the_time.what_time
#puts(Time.now)

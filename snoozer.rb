# snooze class ************************************************************************************

class Snooze

	$hours_asleep = 0 # global variable

	def tired?
		if $hours_asleep >= 7 then
			#reset hours_asleep var to 0
			$hours_asleep = 0
			return false
		else
			$hours_asleep += 1
			return true
		end
	end

	def snore
		puts("snore...")
	end

	def sleep
		puts("z" * $hours_asleep)
	end

end

snooze = Snooze.new

# while loop *****************************************************************************************

puts("** basic while **")
while snooze.tired?
	snooze.sleep
	snooze.snore
end

puts("** while modifier **")
snooze.sleep while snooze.tired?

puts("** while begin...end executes at least once **")
begin
	snooze.sleep
	snooze.snore
end while snooze.tired?

# until loop *****************************************************************************************

puts("** until tired is NOT true **")
until !snooze.tired?
	snooze.sleep
	snooze.snore	
end

puts("** until modifier **")
snooze.sleep until !snooze.tired?

puts("** begin + end, runs at least once **")
begin
	snooze.sleep
	snooze.snore
end until !snooze.tired?




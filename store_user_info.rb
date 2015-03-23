require("yaml")

$user_info_array = Array.new()
puts("What's your name?")
user_name = gets().chomp()
puts("Where do you work?")
user_employer = gets().chomp()
puts("Where do you live?")
user_city = gets().chomp()

$user_info_array[0] = [user_name, user_employer, user_city]

$user_data_hash = {
	"Name" => user_name,
	"Employer" => user_employer,
	"Location" => user_city
}

$file_name = "storage.yml"

class WriteToFile

	def save_to_file
		File.open($file_name, 'w') {
			|f|
			# for the array
			# for x in $user_info_array
			# 	f.write(x.to_yaml)
			# end

			# lets use key value pairs though
			f.write($user_data_hash.to_yaml)
		}
	end

	def load_file
		file = File.read($file_name)
		$user_info_array = YAML::load(file)
	end

	def show_file
		puts("User Info:")
		# for the array
		# for x in $user_info_array
		# 	puts(x)
		# end

		puts($user_data_hash.to_yaml)
	end

end

writer = WriteToFile.new

if File.exist?($file_name) then
	writer.save_to_file
	writer.load_file
	writer.show_file
else
	puts("Cannot find file: #{$file_name}")
end 


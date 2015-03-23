require_relative("inheritance_demo.rb")
#require("/Users/D_Lo/Desktop/inheritance_demo.rb")

car = Car.new("red", "really fast", "manual")
puts("there are " + car.return_number_of_instances.to_s + " of the car class now")

# create a couple hashes

toys = {
	:apple => "iPad",
	"amazon" => "kindle fire",
	"microsoft" => "surface",
	"google" => "some random thing"
}
toys.default = "some random text"

# newer syntax
cars = Hash.new("Something super cool and fast")
cars["bmw"] = "M3"
cars["porsche"] = "911 Turbo"
cars["audi"] = "A4"

# combine all keys for hashes listed, search keys for the :apple symbol
allKeys = toys.keys + cars.keys
for k in allKeys
	if k == :apple
		toys[k] = "iPhone10"	
		#puts("the new value is --> " + toys[k])
	end
end

# & symbol will list any duplicates
p(cars.values & toys.values)
# + symbol will join the returned array from keys/values methods
p(cars.keys + toys.keys)


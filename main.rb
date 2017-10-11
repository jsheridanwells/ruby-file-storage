# create an array with two files passed in as arguments when main is run
my_files = ARGV

# create arrays for each text file, opens file, reads contents, splits at line break
makes_arr = open(my_files[0]).read.split("\n")
models_arr = open(my_files[1]).read.split("\n")

# create a hash, each key is an item in makes array, value is empty array
Car_Hash = Hash[makes_arr.map {|key| [key, []]}]

# for each model, match the letter code to first letter in model name key
# push to array model string starting at 3rd character (removes letter code)
models_arr.each do |car|
	if car[0] == "N"
		Car_Hash["Nissan"].push(car.slice(2, car.length))
	elsif car[0] == "T"
		Car_Hash["Toyota"].push(car.slice(2, car.length))
	else
		Car_Hash["Honda"].push(car.slice(2, car.length))
	end
end

# prints contents of Car_Hash
puts Car_Hash

my_files = ARGV

Car_hash = Hash.new

makes_arr = open(my_files[0]).read.split("\n")
models_arr = open(my_files[1]).read.split("\n")

Car_hash[makes_arr.each {|key| [key, []]}]

p Car_hash

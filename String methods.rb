#puts "Hello World"
str = "Hello world"

#concat (inplace)
str.concat(32,"Pakistan          ")
puts str

puts "--------------"
#upcase and downcase(not inplace)
puts str.upcase
puts str

puts "--------------"
#capitalize (inplace with !)
puts str.capitalize
puts str

puts "--------------"
#reverse (inplace with !)
puts str.reverse
puts str

puts "--------------"

#delete (inplace with !)
puts str.delete("oP")
puts str

#puts "--------------"

#replace(inplace)
#puts str.replace("oP")
#puts str

puts "--------------"

#length
puts str.length()
puts str

puts "--------------"

#strip
puts str.strip!
puts str

puts "--------------"
#lstrip
puts str.lstrip
puts str

puts "--------------"
#rstrip
puts str.rstrip
puts str

puts "--------------"
#gsub (inplace with !)
puts str.gsub("Pakistan","Lahore")
puts str


#interpolation
puts "--------------"

temperature = 35.6
unit = "C"
puts "Today the temperature in #{unit} is: #{temperature*2}"
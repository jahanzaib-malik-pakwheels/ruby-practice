hash = { "fname"=>"pak" , "lname" => "wheels" , "founded" => 2003 , 7 => "Test"}

puts hash

puts hash.key("Test")
puts hash["fname"]


for key in hash.keys
    puts "Key is #{key} with value #{hash[key]}"
end
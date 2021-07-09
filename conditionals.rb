num = 3

if num.even?
    puts "Its an even number"
elsif num.odd?
    puts "Its an odd number"
else
    puts "IDK"
end


grade = "B+"

case grade
when "A" , "A+" , "A-"
    puts "Perfect"
when "B" ,"B+"
    puts "Not bad"
    puts "But you can improve"
else
    puts "Cant be identified"
end
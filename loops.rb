for i in 2..10
    if i.even?
        puts "#{i} is even"
    end
end


arr = ["pak","wheels",2,5,76]

for x in arr
    puts "x is: #{x} and its type is: #{x.class}"
end


i = 3
while i < 25
    puts "#{i} is smoll"
    i+=1
    if i==10
        next
    end
end

i.times{
    puts "#{i}-Hello world"
}

#eachhhhhhh

arr.each do | e |
    puts e.class
end


hash = { "fname"=>"pak" , "lname" => "wheels" , "founded" => 2003 , 7 => "Test"}
def print_val(key)
    puts " key is #{key} with type #{key.class}"
end


hash.keys.each{|key|
    print_val(key)
}


def test_default_value(p1="abc",p2)
    puts "p1 is: #{p1} and p2 is: #{p2}"
end

test_default_value(2)


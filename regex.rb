# ^ : Beginning of String
# $ : End Of String
# . : Any Character
# * : Match 0 or more times
# + : Match 1 or more times
# ? : Match 0 or 1 time
# | : Alternative
# () : Grouping
# [] : Match any string inside the square brackets 
# {} : Repitition Modifier
# \ : Escape (turn RegEx in plain character)


string1 = "PakistanZindabad"
string2 = "Pakistanzindabad"
string3 = "ZindabadPakistan"
string4 = "PakistandsfsafajsZindabad"
string5 = "ZindabadsndsnsjkPakistan"
string6 = "pakistanzindabad"
def reg_match_with_word(string1,string2)
    if string1 =~ /#{string2}/
        puts "Matches"
    else
        puts "Not Matches"
    end
end

#To match string with regular expression we use =~ for comparison
#instead of ==.

reg_match_with_word(string1,string2)
reg_match_with_word(string1,string6.capitalize)

def reg_begins_with_word(string1,string2)
    if string1 =~ /^#{string2}/
        puts "String Begins with  #{string2}"
    else
        puts "Not Matches"
    end
end

reg_begins_with_word(string1,"auto")
reg_begins_with_word(string1,"Auto")

def reg_ends_with_word(string1,string2)
    if string1 =~ /#{string2}$/
        puts "String Ends with  #{string2}"
    else
        puts "Not Matches"
    end
end
reg_ends_with_word(string1,"mobile")

def reg_begins_with_and_ends_with_word(string1,string2,string3)
    if string1 =~ /^#{string2}.*#{string3}$/
        puts "String Begins with  #{string2} and ends with #{string3}"
    else
        puts "Not Matches"
    end
end

reg_begins_with_and_ends_with_word(string1,"Auto","mobile")
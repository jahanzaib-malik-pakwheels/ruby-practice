# file = File.new("input.txt",'r')
# # file.each do |line|
# #     puts line
# # end
# data = file.read
# puts data
# file.close()


##################
# Exception Handling
# begin
#     file1 = File.open("inputx.txt",'r')
#     puts file1.read()
#     file1.close
# rescue
#     raise("File Not Found.Please Make sure to write correct file name")    
# end


# Ruby program to illustrate 
# use of ensure statement
  
begin
         
    # using raise to create an exception  
    raise 'Exception Created!'
   
    puts 'After Exception' 
   
  # using Rescue statement
  rescue    
    puts 'Finally Saved!'
    
# using ensure statement  
ensure
   puts 'ensure block execute'
end    
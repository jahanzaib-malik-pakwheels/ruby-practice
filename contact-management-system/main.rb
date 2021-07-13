require_relative 'contact.rb'
#puts "hello"

Contact.loadAll
#Contact.displayAll
while true
    puts
    puts "<--------- Welcome to Contact Management System -------->"
    puts
    puts "Supported Operations are:"
    puts
    puts "1. Create a new contact"
    puts "2. View a contact"
    puts "3. Delete a contact"
    puts "4. Update a contact"
    puts "5. View All contacts"
    puts "6. Exit"

    puts "\nEnter your choice:"
    res = gets.chomp.to_i
    case(res)
    when 1
        puts "Enter first name of contact"
        fname = gets.chomp
        until !fname.empty?
            puts "Please Enter a valid first name of contact"
            fname = gets.chomp
        end
        puts "Enter last name of contact"
        lname = gets.chomp
        until !lname.empty?
            puts "Please Enter a valid last name of contact"
            lname = gets.chomp
        end
        puts "Enter phone number of contact"
        p_num = gets.chomp
        until p_num !~ /\D/
            puts "Please Enter a valid phone number of contact"
            p_num = gets.chomp
        end
        puts "Enter email of contact"
        email = gets.chomp
        until email =~ /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/ && !email.empty?
            puts "Please Enter a valid email of contact"
            email = gets.chomp
        end
        
        
        Contact.new({"fname"=>fname,"lname"=>lname,"phone_num"=>p_num,"email"=>email}).save
        puts "Contact has been added and saved."
    
    when 2
        puts "1. Find by name"
        puts "2. Find by phone number"

        puts "\nEnter your choice:"
        subRes = gets.chomp.to_i

        case subRes
            when 1
                 puts "Enter first or last name of contact"
                 name = gets.chomp
                 Contact.find_by_name(name)
            when 2
                puts "Enter phone number of contact"
                num = gets.chomp
                Contact.find_by_phone_num(num)
        end
    when 3
        puts "ALL CONTACTS ARE: "
        puts
        Contact.displayAll
        puts
        puts "Enter the ID of contact you want to delete"
        id = gets.chomp.to_i
        Contact.delete(id)
    when 4
        puts "ALL CONTACTS ARE: "
        puts
        Contact.displayAll
        puts
        puts "Enter the ID of contact you want to update"
        id = gets.chomp.to_i
        puts "Leave field blank to leave it unchanged"
        puts "Enter new first name of contact"
        fname = gets.chomp
        puts "Enter new last name of contact"
        lname = gets.chomp
        puts "Enter new phone number of contact"
        p_num = gets.chomp
        until p_num !~ /\D/
            puts "Please Enter a valid phone number of contact"
            p_num = gets.chomp
        end
        puts "Enter email of contact"
        email = gets.chomp
        until email =~ /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/ || email.empty?
            puts "Please Enter a valid email of contact"
            email = gets.chomp
        end
        Contact.update({"id"=>id,"fname"=>fname,"lname"=>lname,"phone_num"=>p_num,"email"=>email})
        puts "Contact has been updated and saved."
    when 5
        puts "ALL CONTACTS ARE: "
        puts
        Contact.displayAll
    when 6
        puts "------------------------"
        puts "--- THANKS FOR USING ---"
        puts "------------------------"
        exit(0)
    else
        puts "Please enter a valid option !!!!"
    end
end
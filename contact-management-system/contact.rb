class Contact


    attr_accessor :id, :fname, :lname, :phone_num, :email, :price
    @@contact_list = []
    # initialize a contact object using a data hash

    def self.loadAll
        f = File.open("contacts.txt", "r")
        f.each_line do |contact|
          #print contact.split(",")
          arr = contact.split(",")
          @@contact_list.push(Contact.new({'id'=>arr[0].to_i,'fname'=>arr[1],'lname'=>arr[2],'phone_num'=>arr[3],'email'=>arr[4].chomp}))
        end
        #puts "conntact list is"
        #print @@contact_list
        f.close
    end

    def self.saveAll
        File.open("contacts.txt", "w+") do |f|
            @@contact_list.each { |contact| f.puts(contact.id.to_s+","+contact.fname+","+contact.lname+","+contact.phone_num+","+contact.email) }
        end
    end

    def display
        puts "---------------------------------------"
        puts "Contact ID is : #{@id}"
        puts "Contact First Name is : #{@fname}"
        puts "Contact Last Name is : #{@lname}"
        puts "Contact Phone Number is : #{@phone_num}"
        puts "Contact Email is : #{@email}"
        puts
    end

    def self.displayAll
        @@contact_list.each { |contact| contact.display}
    end

    def initialize(contact_data = {})
        if contact_data.key?('id')
            @id = contact_data['id']
        else
            @id = @@contact_list.max_by{|contact| contact.id }.id+1
        end
        @fname = contact_data['fname']
        @lname = contact_data['lname']
        @phone_num = contact_data['phone_num']
        @email = contact_data['email']
    end

    def save
        @@contact_list.push(self)
        #puts "Contact list after add"
        #print @@contact_list
        Contact.saveAll
    end

    def self.find_by_name(name)
        count=0
        @@contact_list.select { |contact| contact.fname.downcase == name.downcase ||  contact.lname.downcase == name.downcase}.each{|c| 
            c.display 
            count+=1
        }
        if count == 0
            puts "----------------------"
            puts "---NO RESULTS FOUND---"
            puts "----------------------"
        end
    end

    def updateContact(new_data)
        unless new_data['fname'].strip.empty?
            @fname = new_data['fname']
        end
        unless new_data['lname'].strip.empty?
            @lname = new_data['lname']
        end
        unless new_data['phone_num'].strip.empty?
            @phone_num = new_data['phone_num']
        end
        unless new_data['email'].strip.empty?
            @email = new_data['email']
        end
        return self
    end

    def self.update(new_data)
        @@contact_list.collect! { |contact|
            if contact.id == new_data['id']
                contact.updateContact(new_data)
            else
                contact
            end
        }
        Contact.saveAll
        puts
    end
    def self.delete(id)
        temp = @@contact_list.length
        @@contact_list.select!{|contact| contact.id != id }
        puts
        if temp == @@contact_list.length
            puts "----------------------"
            puts "--- ENTER VALID ID ---"
            puts "----------------------"
        else
            puts "----------------------"
            puts "--- Contact DELETED ---"
            puts "----------------------"
            Contact.saveAll
        end
        puts
    end
    def self.find_by_phone_num(num)
        count=0
        @@contact_list.select { |contact| contact.phone_num == num }.each{|c| 
            c.display
            count+=1
        }
        if count == 0
            puts "----------------------"
            puts "---NO RESULTS FOUND---"
            puts "----------------------"
        end
    end
end 
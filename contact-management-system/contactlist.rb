class ContactList
    
    FILE_NAME = "contacts.txt"
    
    def initialize
    end
    def loadAll
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

    def saveAll
        File.open("contacts.txt", "w+") do |f|
            @@contact_list.each { |contact| f.puts(contact.id.to_s+","+contact.fname+","+contact.lname+","+contact.phone_num+","+contact.email) }
        end
    end
end
require 'csv'

#table = CSV.parse(File.read("biostats.csv"), headers: true)
table = CSV.read "biostats.csv"
p table
file_csv = File.open "output.csv","w"
for row in table
    record  = row.join(",")
    record.concat("\n")
    puts "record is #{record}"
    file_csv << record
    #p x
end
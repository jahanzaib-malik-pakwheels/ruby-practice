class Document
    def initialize(name)
        @name = name
    end
    def set_name(new_name)
        @name = new_name
    end
    def get_name()
        @name
    end
end

doc1 = Document.new("ruby1.txt")
doc1.set_name("ruby2.txt")
puts doc1.get_name
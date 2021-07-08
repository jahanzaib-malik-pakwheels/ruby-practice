class Box
    def initialize(length,width)
        @length = length 
        @width = width 
        puts("Box Class Constructor Called")
    end
    def display_box_name
        puts "I am Box Class"
    end
end

class SmallBox < Box
    def print_area
        puts "Area is : #{@length * @width}"
    end
    
end


class BigBox < Box
    def initialize(length,width,height)
        @length = length 
        @width = width 
        @height = height
        puts("BigBox Class Constructor Called")

    end
    def print_area
        puts "Area is : #{@length * @width * @height}"
    end
end


big1 = BigBox.new(10,20,30)
big1.print_area

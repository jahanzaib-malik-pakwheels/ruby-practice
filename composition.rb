class Engine
    def initialize(count_parts)
        @count_parts = count_parts
    end
    def get_parts_count
        @count_parts
    end
end
class Tyres

    def initialize(no_of_tyres)
        @no_of_tyres = no_of_tyres
    end
    def get_tyres_count
        @no_of_tyres
    end
end

class Car
    attr_accessor :engine,:tyres
    def initialize(engine,tyres)
        @engine = engine
        @tyres = tyres
    end
    def get_details
        puts "Car Engine has #{engine.get_parts_count} parts"
        puts "Car has #{tyres.get_tyres_count} tyres"
    end
end

engine = Engine.new 5
tyres = Tyres.new 4

car = Car.new(engine,tyres)
car.get_details

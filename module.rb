module BigSample
    class SampleA
        def initialize()
            puts "Sample A"
        end
    end
    class SampleB
        def initialize()
            puts "Sample B"
        end
    end
end

sample1 = BigSample::SampleA.new
sample2 = BigSample::SampleB.new
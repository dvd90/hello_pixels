class Pixel
    attr_reader :r, :g, :b
    def initialize(r, g, b)
       @r = r
       @g = g
       @b = b
    end

    def to_a
        [@r, @g, @b]
    end

    def to_s
        "(#{@r}, #{@g}, #{@b})"
    end

    def self.reproduction(parent_one, parent_two)
        child_dna = []
        parents = [parent_one.to_a, parent_two.to_a]
        3.times do |i|
            random = rand(2)
            child_dna << parents[random][i]
        end
        self.new(child_dna[0], child_dna[1], child_dna[2])
    end
 end
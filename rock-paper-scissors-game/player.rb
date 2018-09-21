class Player
    attr_accessor :hand, :score
    attr_accessor :deal
    @@turn = :human

    def initialize
        @deal = [:Rock, :Paper, :Scissors]
        @score = 0
        @hand = nil
        @turn = :human
    end

    def ai_play
       @hand = deal[Random.new.rand(deal.length)]
       @@turn = :human
    end

    def human_play
    
        puts "Play your hand"
        until @deal.include? (@hand = gets.chomp.to_sym)
            puts "Wrong play: play hand again"
        end
        @@turn = :ai
    end

    def self.turn
        @@turn
    end
end
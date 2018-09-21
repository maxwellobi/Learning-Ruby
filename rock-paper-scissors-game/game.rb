require "player"

class Game

    def initialize 
        @human = Player.new
        @ai = Player.new 
        puts "Scores: Human = #{ @human.score }, AI = #{ @ai.score }"
    end

    def play
        
        @human.human_play if Player.turn == :human
        @ai.ai_play if Player.turn == :ai

        puts "Played: Human #{@human.hand}: AI #{@ai.hand}"
        score
        play
    end

    def score    

        if !@human.hand.nil? && @human.hand == @ai.hand
            puts "Draw! No Scores! Repeat"
            play
        else

            if @human.hand == :Paper
                @human.score += 1 if @ai.hand == :Rock
                @ai.score += 1 if @ai.hand == :Scissors
            end

            if @human.hand == :Rock
                @ai.score += 1 if @ai.hand == :Paper
                @human.score += 1 if @ai.hand == :Scissors
            end

            if @human.hand == :Scissors
                @ai.score += 1 if @ai.hand == :Rock
                @human.score += 1 if @ai.hand == :Paper
            end

            puts "Scores: Human = #{ @human.score }, AI = #{ @ai.score }"
        end
    end

end

Game.new.play
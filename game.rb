class Game 

    attr_accessor :turn, :p1, :p2
    
    def initialize 
        @turn = 1
        @p1 = 3
        @p2 = 3
    end

    def create_players
        p1 = Player.new(1, 2)
        p2 = Player.new(2, 3)
    end

    def update_turn(turn)
        if turn == 1
            @turn = 2
        else
            @turn = 1
        end
        start
    end

    def update_lives(turn)
        if turn == 1
            @p1 -= 1
        else
            @p2 -= 1
        end
        if @p1 == 0 || @p2 == 0
            game_over
        end
    end

    def game_over
        puts "P1: #{@p1}/3 lives. P2 #{@p2}/3 lives."
        puts "----GAME OVER----"
        puts "Good bye!"
        exit(0)
    end

    def start
        puts "P1: 1 #{@p1}/3 lives. P2: #{@p2}/3 lives."

        question = Questions.new(turn)
        if !question.start
            update_lives(turn)
        end
            update_turn(turn)
    end
end

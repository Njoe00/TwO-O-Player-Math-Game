class Questions

    attr_accessor :turn

    def initialize(turn)
        @turn = turn
    end

    def start
        num_one = rand(1..25)
        num_two = rand(1..25)

        puts "---- NEW TURN -----"
        puts "P1 #{turn}: What is #{num_one} + #{num_two}?"
        print "> "

        answer = $stdin.gets.chomp.to_i

        if answer == num_one + num_two
            puts "Correct!"
            return true
        else
            puts "Incorrect!"
            return false
        end
    end
end




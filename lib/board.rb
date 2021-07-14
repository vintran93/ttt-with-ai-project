class Board
    attr_accessor :cells


    def initialize
        reset!          #call the reset method 
    end

    def reset!
        @cells = Array.new(9, " ") #(Number of positions, blank space " ")
    end
    
    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end

    def position(input)     #call cells array and send string as an integer, -1 actual position
        cells[input.to_i-1] 
    end

    def full?
        #cells.all?{|token| token == "X" || token == "O"}
        cells.all? do |token|
            if token == "X" || token == "O"
               true
            else
                false
            end
        end 
    end

    def turn_count
        cells.count {|token| token == "X" || token == "O"} 
    end

    def taken?(input)
        position(input) == "X" || position(input) == "O"
        #!(position(input) == " " || position(input) == "")
    end

    def valid_move?(input)
        input.to_i.between?(1,9) && !taken?(input)  #user input between 1-9, not taken
    end
    
    def update(input, player) #updates cells in the board with the player token according to the input
        cells[input.to_i-1] = player.token # Stands for X or O 
    end
end
module Players
    class Human < Player

        def move(input)
            puts "Please select 1-9:"
            #gets.chomp
            gets.strip
        end
    end

end

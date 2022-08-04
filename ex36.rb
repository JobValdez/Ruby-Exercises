def breakfast
    puts "What whould you like to eat for break fast? pizza, cereal or milk and bread"
    print ">"
    choice = $stdin.gets.chomp

    if choice == "pizza"
        puts "Mmm, if you continue eating like this will get fatter very soon!"
        lunch
    elsif choice == "cereal"
        puts "Mmm, it's okay to start the day"
        lunch
        elsif choice == "milk and bread"
        puts "This one looks great, I want too!"
        lunch
    else
        puts "Mr Inteligent, you have to type a valid option!"
        breakfast
    end
end

def lunch
    puts "Now, lets talk about the lunch, what would you eat now: fruits, fried chicken or healthy food"
    print ">"
    choice = $stdin.gets.chomp

    if choice == "fried chicken"
        puts "Mmm, if you continue eating like this will die very soon!"
    elsif choice == "fruits"
        puts "Mmm, it will not sustain you for too long"
    elsif choice == "healthy food"
        puts "Nice, I love it!"
    else
        puts "Mr Inteligent, you have to type a valid option!"
        lunch
    end
end

breakfast()
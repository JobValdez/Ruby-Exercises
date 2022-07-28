def cicle_while_loop 
    i = 0
numbers = []
number_four = 40

while i < number_four
    puts "At the top is #{i}"
    numbers.push(i)

    i += 4
    puts "Numbers now: ", numbers
    puts "At the botton i is #{i}"
    puts "---------------"
end

puts "The numbers:"

# remember you can write this 2 other ways?
numbers.each {|num| puts num }

end

puts cicle_while_loop
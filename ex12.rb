print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Gie me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}. "

#See how I can add a .to_i to the gets.chomp and it will convert to an integer? I can also save what gets.chomp returns, and call .to_i on that, as I did with number = another.to_i.

# Try out the .to_f operation
# gets. = You get back a string. This string has the contents of what you (or the user) typed in, so if you assign this string to a variable you’ll be able to use it.

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

print "What is your name? "
name = gets.chomp
puts "Hello #{name}, nice to meet you!"
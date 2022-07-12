first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "How are you? "
feeling = $stdin.gets.chomp

print "Thank you now I now you are #{feeling}"
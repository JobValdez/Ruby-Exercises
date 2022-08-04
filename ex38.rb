ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

#while stuff is not equal to 10 run this
while stuff.length != 10
    #selecciona el ultimo del arreglo
    next_one = more_stuff.pop
    # anuncia cual es el ultimo
    puts "Adding: #{next_one}"
    #sube el ultimo al arreglo original 
    stuff.push(next_one)
    puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")